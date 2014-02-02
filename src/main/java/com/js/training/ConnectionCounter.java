package com.js.training;

import static org.atmosphere.cpr.ApplicationConfig.MAX_INACTIVE;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.atmosphere.config.service.Disconnect;
import org.atmosphere.config.service.ManagedService;
import org.atmosphere.config.service.Ready;
import org.atmosphere.cpr.AtmosphereResource;
import org.atmosphere.cpr.AtmosphereResourceEvent;
import org.atmosphere.cpr.Broadcaster;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@ManagedService(path = "/connect", atmosphereConfig = MAX_INACTIVE + "=120000")
public class ConnectionCounter {

	private final Logger logger = LoggerFactory
			.getLogger(ConnectionCounter.class);

	private static final Map<String, Integer> connections = new HashMap<String, Integer>();
	
	private static final String TOTAL_KEY = "total";

	@Ready(encoders = {JacksonEncoder.class})
	public List<Message> onReady(final AtmosphereResource r) {
		logger.info("Browser {} connected.", r.uuid());
		Integer totalConnections = connections.get(TOTAL_KEY);
		if (totalConnections == null) {
			totalConnections = 0;
		}
		connections.put(TOTAL_KEY, ++totalConnections);
		return getMessagesList(connections);
	}

	private List<Message> getMessagesList(Map<String, Integer> connections2) {
		List<Message> messages = new ArrayList<Message>();
		for(Entry<String, Integer> entry : connections.entrySet()){
			messages.add(new Message(entry.getKey(), entry.getValue()));
		}
		return messages;
	}

	/**
	 * Invoked when the client disconnect or when an unexpected closing of the
	 * underlying connection happens.
	 * 
	 * @param event
	 */
	@Disconnect
	public void onDisconnect(AtmosphereResourceEvent event) {
		if (event.isCancelled()) {
			logger.info("Browser {} unexpectedly disconnected", event
					.getResource().uuid());
		} else if (event.isClosedByClient()) {
			logger.info("Browser {} closed the connection", event.getResource()
					.uuid());
		}
		Broadcaster b = event.broadcaster();
		Integer totalConnections = connections.get(TOTAL_KEY);
		connections.put(TOTAL_KEY, --totalConnections);
		b.broadcast(new JacksonEncoder().encode(getMessagesList(connections)));
	}
	
	@org.atmosphere.config.service.Message(encoders = {JacksonEncoder.class}, decoders = {JacksonDecoder.class})
	public List<Message> onMessage(Message message){
		String id = message.getId();
		Integer totalConnections = connections.get(id);
		if(totalConnections == null){
			totalConnections = 0;
		}
		connections.put(id, ++totalConnections);
		Map<String, Integer> messageMap = new HashMap<String, Integer>();
		messageMap.put(id, totalConnections);
		return getMessagesList(messageMap);
	}

}
