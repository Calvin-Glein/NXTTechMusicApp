<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css"></link>
<script src="css/semantic/semantic.min.js">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous">
</script>

<title>Done</title>
</head>
<body>
	<div class="container" style="background-color: white;">
		<div class="ui container">
			<br> <br>
			<h1 class="ui header headerc">Guess the Song</h1>
			<div class="ui fitted divider"></div>
			<br>
			<div class="ui grid">
				<div class="four wide column">
					<jsp:include page="sidebar.jsp" />
				</div>

				<div class="twelve wide column">
					<h3 class="ui block header">
						<div class="ui grid">
							<div class="eight wide column">
								<div class="left aligned">Room</div>
							</div>
						</div>
					</h3>
					<div class="ui segment">
						<div class="ui grid">

							<div class="ui sixteen wide column">

								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										Joanna
										<div class="sub header">Player 1</div>
									</div>
								</h2>
								<div class="ui fitted divider"></div>
								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										Glenn
										<div class="sub header">Player 2</div>
									</div>
								</h2>

								<div class="ui fitted divider"></div>

								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										Paolo
										<div class="sub header">Player 3</div>
									</div>
								</h2>
								<div class="ui fitted divider"></div>
								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										Nao
										<div class="sub header">Player 4</div>
									</div>
								</h2>



							</div>
						</div>
					</div>
					<br>
					<button class="ui button blue fluid"
						onclick="document.location.href='play.jsp';">Play!</button>



				</div>
			</div>
		</div>

		<br> <br> <br> <br>
	</div>
</body>
</html>