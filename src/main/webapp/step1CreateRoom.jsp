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

<title>Create A Room</title>
</head>
<body>
	<div class="container" style="background-color: white;">
		<div class="ui container">
			<br>
			<br>
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
								<div class="left aligned">Create a Room</div>
							</div>
						</div>
					</h3>
					<div class="ui segment">
						<div class="ui grid">
							<div class="ui four wide column">
								<div class="ui card">
									<div class="image">
										<img src="images/room.jpg">
									</div>
									<%-- <div class="content">
											Username
											<div class="sub header">
												<c:out value="${account.username}" />
											</div>
										</div> --%>
								</div>
							</div>
							<div class="ui twelve wide column">
								<form method="POST" action="CreateRoomServlet" class="ui form">
									<div class="field">
										<label>Room Name</label> <input type="text" name="first-name"
											placeholder="Come up with something nice">
									</div>
									<div class="field">
										<div class="ui checkbox">
											<input type="checkbox" tabindex="0" class="hidden"> <label>I
												agree to the Terms and Conditions</label>
										</div>
									</div>
								<!-- type="submit" -->
								<br>
								<button type="submit" class="ui button blue fluid">Submit</button>
								</form>
									

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<br> <br> <br> <br>
	</div>
</body>
</html>