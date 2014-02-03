package com.js.training;

import static org.atmosphere.cpr.ApplicationConfig.MAX_INACTIVE;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.atmosphere.config.service.Disconnect;
import org.atmosphere.config.service.ManagedService;
import org.atmosphere.config.service.Ready;
import org.atmosphere.cpr.AtmosphereResource;
import org.atmosphere.cpr.AtmosphereResourceEvent;
import org.atmosphere.cpr.Broadcaster;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@ManagedService(path = "/connect")
public class ConnectionCounter {

	private final Logger logger = LoggerFactory
			.getLogger(ConnectionCounter.class);

	private static final Map<String, Set<String>> connectionsWithUUID = new HashMap<String, Set<String>>();

	private static final String TOTAL_KEY = "total";

	@Ready
	public void onReady(final AtmosphereResource r) {
		logger.info("Browser {} connected.", r.uuid());
		putResourceInConnection(TOTAL_KEY, r.uuid());
		Broadcaster b = r.getBroadcaster();
		b.broadcast(new JacksonEncoder()
				.encode(getTotalConnectionMessageList()));
	}

	/**
	 * Invoked when the client disconnect or when an unexpected closing of the
	 * underlying connection happens.
	 * 
	 * @param event
	 */
	@Disconnect
	public void onDisconnect(AtmosphereResourceEvent event) {
		String uuid = event.getResource().uuid();
		if (event.isCancelled()) {
			logger.info("Browser {} unexpectedly disconnected", uuid);
		} else if (event.isClosedByClient()) {
			logger.info("Browser {} closed the connection", uuid);
		}
		Broadcaster b = event.broadcaster();
		removeResourceFromAllConnections(uuid);
		b.broadcast(new JacksonEncoder()
				.encode(getTotalConnectionMessageList()));
	}

	@org.atmosphere.config.service.Message(encoders = { JacksonEncoder.class }, decoders = { JacksonDecoder.class })
	public List<Message> onMessage(AtmosphereResource r, Message message) {
		String connectionID = message.getId();
		String uuid = r.uuid();
		putResourceInConnection(connectionID, uuid);
		return getConnectionMessageList(connectionID);
	}
	
	private void putResourceInConnection(String connectionID, String uuid) {
		Set<String> uuids = connectionsWithUUID.get(connectionID);
		if (uuids == null) {
			uuids = new HashSet<String>();
			connectionsWithUUID.put(connectionID, uuids);
		}
		uuids.add(uuid);
	}

	private void removeResourceFromConnection(String connectionID, String uuid) {
		Set<String> uuids = connectionsWithUUID.get(connectionID);
		uuids.remove(uuid);
	}

	private List<Message> getTotalConnectionMessageList() {
		List<Message> messages = new ArrayList<Message>();
		for (Entry<String, Set<String>> connection : connectionsWithUUID
				.entrySet()) {
			messages.add(new Message(connection.getKey(), connection.getValue()
					.size()));
		}
		return messages;
	}

	private List<Message> getConnectionMessageList(String connectionID) {
		List<Message> messages = new ArrayList<Message>();
		messages.add(new Message(connectionID, connectionsWithUUID.get(
				connectionID).size()));
		return messages;
	}
	
	private void removeResourceFromAllConnections(String uuid) {
		for (String connection : connectionsWithUUID.keySet()) {
			removeResourceFromConnection(connection, uuid);
		}
	}

}
