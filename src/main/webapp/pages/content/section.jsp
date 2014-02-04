<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Javascript training</title>

<!-- Bootstrap -->
<jsp:include page="includes/_style.jsp"/>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Javascript</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="instructions">
					<div class="row heading">
						<div class="col-md-12">
							Section ${section}
						</div>
					</div>
					<div class="row body">
						<div class="col-md-12">
							<jsp:include page="/pages/content/sections/${section}/instructions.jsp" />
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="codeEditor">
<textarea id="code-js">
<jsp:include page="/pages/content/sections/${section}/code.jsp" />
</textarea>
				</div>
				<div class="console">
					<pre id="log-js">
					</pre>
				</div>
			</div>
			<form action="${nextSection}" method="GET">
				<button type="button" class="btn btn-primary" id="run">Run</button>
				<button type="button" class="btn btn-success" id="submit" data-section="${section}">Submit</button>
				<button type="submit" class="btn btn-info" id="next" style="display:none;">Next</button>
			</form>
			Total Connections : <p id="totalCount" class="totalCount">0</p>
  			Connection for 1 : <p id="${section}Count" class="sectionCount">0</p>
		</div>
	</div>
	<jsp:include page="includes/_script.jsp"/>
</body>
</html>
