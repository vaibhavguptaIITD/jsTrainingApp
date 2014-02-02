
package com.js.training;


public class Message {

    private String id;
    private int connections;
    
    public Message(){
    	
    }
    
    public Message(String questionNumber, int connections){
    	this.id = questionNumber;
    	this.connections = connections;
    }
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getConnections() {
		return connections;
	}
	public void setConnections(int connections) {
		this.connections = connections;
	}

    
}
