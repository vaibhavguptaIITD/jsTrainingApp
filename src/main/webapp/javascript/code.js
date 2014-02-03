var editor,
logEditor = $("#log-js");
var i = 10;
$(function() {
	editor = CodeMirror.fromTextArea(document.getElementById("code-js"), {
		lineNumbers : true,
		mode : "javascript",
		gutters : [ "CodeMirror-lint-markers" ],
		lint : true
	});
});
$("#runCode").click(function(){
	eval(editor.getValue());
});

function log(statement){
	var evalStatement = eval(statement);
	logEditor.append("<p>"+evalStatement+"</p>");
}