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
	<textarea id="code-js">var widgets = []
function updateHints() {
  editor.operation(function(){
    for (var i = 0; i < widgets.length; ++i)
      editor.removeLineWidget(widgets[i]);
    widgets.length = 0;

    JSHINT(editor.getValue());
    for (var i = 0; i < JSHINT.errors.length; ++i) {
      var err = JSHINT.errors[i];
      if (!err) continue;
      var msg = document.createElement("div");
      var icon = msg.appendChild(document.createElement("span"));
      icon.innerHTML = "!!";
      icon.className = "lint-error-icon";
      msg.appendChild(document.createTextNode(err.reason));
      msg.className = "lint-error";
      widgets.push(editor.addLineWidget(err.line - 1, msg, {coverGutter: false, noHScroll: true}));
    }
  });
  var info = editor.getScrollInfo();
  var after = editor.charCoords({line: editor.getCursor().line + 1, ch: 0}, "local").top;
  if (info.top + info.clientHeight < after)
    editor.scrollTo(null, after - info.clientHeight + 3);
}
</textarea>
	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jshint/r07/jshint.js"></script>
	<script
		src="https://rawgithub.com/zaach/jsonlint/79b553fb65c192add9066da64043458981b3972b/lib/jsonlint.js"></script>
	<script
		src="javascript/code.js"></script>
</body>
</html>
