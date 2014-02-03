<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Code Editor</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/codemirror.css">
<link rel="stylesheet" href="css/lint.css">
<script src="javascript/lib/codemirror/codemirror.js"></script>
<script src="javascript/lib/codemirror/mode/javascript/javascript.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jshint/r07/jshint.js"></script>
<script
	src="https://rawgithub.com/zaach/jsonlint/79b553fb65c192add9066da64043458981b3972b/lib/jsonlint.js"></script>
<script src="javascript/lib/codemirror/addon/lint.js"></script>
<script src="javascript/lib/codemirror/addon/javascript-lint.js"></script>
<script src="javascript/lib/codemirror/addon/json-lint.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<textarea id="code-js">
var i = 0;
for(var i = 0; i < 10; i++){
log(i);
}
</textarea>
	<input type="button" id="runCode" value="Run">
<pre id="log-js">

</pre>
	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jshint/r07/jshint.js"></script>
	<script
		src="https://rawgithub.com/zaach/jsonlint/79b553fb65c192add9066da64043458981b3972b/lib/jsonlint.js"></script>
	<script
		src="javascript/code.js"></script>
</body>
</html>
