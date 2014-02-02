package com.js.training;

import java.io.IOException;
import java.util.List;

import org.atmosphere.config.managed.Encoder;
import org.codehaus.jackson.map.ObjectMapper;

/**
 * Encode a {@link Message} into a String
 */
public class JacksonEncoder implements Encoder<List<Message>, String> {

    private final ObjectMapper mapper = new ObjectMapper();

    @Override
    public String encode(List<Message> m) {
        try {
            return mapper.writeValueAsString(m);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
