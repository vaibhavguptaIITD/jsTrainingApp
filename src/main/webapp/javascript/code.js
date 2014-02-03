$(function() {
	var editor = CodeMirror.fromTextArea(document.getElementById("code-js"), {
		lineNumbers : true,
		mode : "javascript",
		gutters : [ "CodeMirror-lint-markers" ],
		lint : true
	});
});