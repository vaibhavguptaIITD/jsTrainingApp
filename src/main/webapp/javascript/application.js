$(function () {
    Subscribe.connectMain();
    CodeEditor.init();
    $('._connections').tooltip();

});

var Subscribe = (function(){
	var socket = atmosphere,
	transport = 'websocket',
	subSocket;
    function connect(){
        var request = { url: "/" + GlobalVars["context"] + "connect",
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
                $("#"+messageId+"Count").html(totalConnections);
            });
        };
        subSocket = socket.subscribe(request);
    }
    
	return {
		connectMain : function(){
			connect();
		},
		submit : function(section){
			subSocket.push(atmosphere.util.stringifyJSON({id: section}));
		}
	}
})();

var CodeEditor = (function(){
	var editor,
	logEditor = $("#log-js"),
	runButton = $("#run"),
	submitButton = $("#submit"),
	nextButton = $("#next")
	
	function initCodeEditor(){
		editor = CodeMirror.fromTextArea(document.getElementById("code-js"), {
			lineNumbers : true,
			mode : "javascript",
			gutters : [ "CodeMirror-lint-markers" ],
			lint : true,
			theme:"solarized dark"
		});
	}
	
	function initRunButton(){
		runButton.click(function(){
			try{
				eval(editor.getValue());
			}
			catch(err){
				log("'"+err.message+"'");
			}
		});
	}
	
	function registerLogFunction(){
		window.log = function(statement){
			var evalStatement;
			if(typeof statement == "string"){
				evalStatement = statement;
			}
			else{
				evalStatement = eval(statement);
			}
			logEditor.append("<p>"+evalStatement+"</p>");
		}
	}
	
	function initSubmitButton(){
		submitButton.click(function(){
			var section = submitButton.data("section");
			Subscribe.submit(section);
			submitButton.hide();
			nextButton.show();
		});
	}
	
	return {
		init : function(){
			initCodeEditor();
			initRunButton();
			initSubmitButton();
			registerLogFunction();
		}
	}
})();



