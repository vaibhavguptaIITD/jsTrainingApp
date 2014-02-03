$(function () {
    "use strict";
    Subscribe.connectMain();
    $("#connect1_btn").click(function(){
    	Subscribe.submitFirst();
    });
});

var Subscribe = (function(){
	var socket = atmosphere,
	transport = 'websocket',
	subSocket;
    function connect(){
        var request = { url: document.location.toString() + "connect",
            contentType : "application/json",
            logLevel : 'debug',
            transport : transport ,
            trackMessageLength : true,
            reconnectInterval : 5000,
            enableXDR: true,
            timeout : 60*90*1000 };
        request.onClientTimeout = function(r) {
            setTimeout(function (){
                subSocket = socket.subscribe(request);
            }, request.reconnectInterval);
        };
        request.onTransportFailure = function(errorMsg, request) {
            atmosphere.util.info(errorMsg);
            request.fallbackTransport = "long-polling";
        };
        request.onMessage = function (response) {
            var message = response.responseBody,
            json = atmosphere.util.parseJSON(message);
            $.each(json, function(i, elem){
            	var messageId = elem.id,
                totalConnections = elem.connections;
                $("._"+messageId+"Count").html(totalConnections);
            });
        };
        subSocket = socket.subscribe(request);
    }
    
	return {
		connectMain : function(){
			connect();
		},
		submitFirst : function(){
			subSocket.push(atmosphere.util.stringifyJSON({id: '1'}));
		}
	}
})();
