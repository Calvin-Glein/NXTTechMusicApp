<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css"></link>
<script src="css/semantic/semantic.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>

<script src="js/jquery.min.js"></script>


<style>
canvas {
	display: block;
	vertical-align: bottom;
}

/* ---- particles.js container ---- */
#particles-js {
	width: 100%;
	height: 100%;
	background-color: #081935;
	background-image: url();
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 50% 50%;
}
</style>




<script>
	function hideMobile() {
		var x = document.getElementById('mobileForm');
		if (x.style.display === 'none') {
			x.style.display = 'block';

		} else {
			x.style.display = 'none';
		}
	}

	$('document')
			.ready(
					function() {
						if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
								.test(navigator.userAgent)) {
							var buttonStarted = document
									.getElementById('getStarted');
							buttonStarted.style.display = 'none';

						} else {
							/* 		var getStartedButton = document
											.createElement("button");
									getStartedButton.setAttribute("class",
											"ui large blue button");
									getStartedButton
											.setAttribute("onclick",
													"document.location.href='step1CreateRoom.jsp';");
									getStartedButton.innerHTML = "Get Started";

									document.getElementById("getStarted").appendChild(
											getStartedButton); */

							hideMobile();
						}
					});
</script>


<title>Guess the song</title>
</head>

<body>
	<div id="particles-js" style="">
		<div class="container" style="background-color: white;">


			<jsp:include page="particles.jsp" />

			<div
				style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-color: black; /*  border-style: solid; */ border-radius: 10px; border-style: solid; opacity: 0.9;">
				<h1 class="ui center aligned icon header" style="z-index: 99;">
					<br></br> <i class="music icon"></i><br></br>
					<div class="ui center header">Guess the Song</div>

					<div id="getStarted" class="ui large blue button"
						onclick="document.location.href='step1CreateRoom.jsp';">Get
						Started</div>
				</h1>
				<form class="ui form" id="mobileForm">
					<div class="field">
						<label>Room Name</label> <input type="text" name="first-name"
							placeholder="Ask your friend">
					</div>
					<div class="field">
						<label>Username</label> <input type="text" name="first-name"
							placeholder="Come up with something nice">
					</div>
					<div class="ui button blue fluid"
						onclick="document.location.href='mobileRoom.jsp';">Enter</div>


				</form>


				<script>
					
				</script>
			</div>

		</div>
	</div>
</body>
</html>