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
		</div>
	</div>
	<div class="jumbotron">
		<div class="container">
			<div class="center-block">
				<h1 style="margin-left: 300px;">Javascript 101</h1>
			</div>
			<div class="pull-right">
				<h2>Vaibhav Gupta</h2>
			</div>
			<div class="clearfix"></div>
	  	</div>
	</div>
	<div class="homePageButtons pull-right">
		<form action="${pageContext.request.contextPath}/section/0" method="GET">
			<button type="submit" class="btn btn-primary">Start</button>
		</form>
	</div>
	<div class="clearfix"></div>
</body>
</html>
