$(function () {
    CodeEditor.init();

});
var CodeEditor = (function(){
	var editor,
	logEditor = $("#log-js"),
	runButton = $("#run"),
	submitButton = $("#submit"),
	nextButton = $("#next"),
	clearButton = $("#clear");
	
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
	
	function initClearButton(){
		clearButton.click(function(){
			logEditor.empty();
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
		};
	}
	
	function initSubmitButton(){
		submitButton.click(function(){
			var section = submitButton.data("section");
			submitButton.hide();
			nextButton.show();
		});
	}
	
	return {
		init : function(){
			initCodeEditor();
			initRunButton();
			initSubmitButton();
			initClearButton();
			registerLogFunction();
		}
	};
})();



