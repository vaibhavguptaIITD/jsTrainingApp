<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Javascript training</title>

<!-- Bootstrap -->
<jsp:include page="/pages/content/includes/_style.jsp"/>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Javascript</a>
			</div>
			<div class="navbar-right">
				<span class="badge _connections" data-toggle="tooltip" data-placement="bottom" title="Current connections/Total Connections">
					<span id="${section}Count">0</span>/<span id="totalCount">0</span>	
				</span>
				
			</div>
		</div>
	</div>
	<div class="jumbotron">
		<div class="container">
			<div class="center-block">
				<h1 style="margin-left: 400px;">Thanks</h1>
			</div>
			<div class="clearfix"></div>
	  	</div>
	</div>
	
	<jsp:include page="/pages/content/includes/_script.jsp"/>
</body>
</html>
