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


<script src="auth.js"></script>
<script src="search.js"></script>
<script
	src="https://apis.google.com/js/client.js?onload=googleApiClientReady"></script>
<script
	src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
<script type="text/javascript"></script>

<title>Search Songs</title>
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
								<div class="left aligned">Youtube</div>
							</div>
						</div>
					</h3>
					<div class="ui segment">
						<div class="ui grid">
							<div class="ui four wide column">
								<div class="ui card">
									<div class="image">
										<img src="images/spotify.jpg">
									</div>
									<div class="content">
										Youtube
										<div class="sub header">Input song titles to be included
											in the game!</div>
										<button onclick="init()">Got It!</button>

									</div>
								</div>
							</div>

							<div class="ui twelve wide column">
								<div class="ui labeled input">
									<input id="query" value='cats' type="text" />

									<button class="ui button" id="search-button" disabled="true"
										onclick="search()">Search</button>


									<div class="ui label">https://www.youtube.com/watch?v=</div>
									<input id="link" type="text" placeholder="search first">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	</div>
</body>
</html>