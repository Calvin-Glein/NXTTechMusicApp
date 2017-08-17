<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css"></link>
<script src="css/semantic/semantic.min.js">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous">
</script>

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

<title>Play</title>
</head>

<body>
	<div id="particles-js" style="">
		<div class="container" style="background-color: white;">
			<jsp:include page="particles.jsp" />
			<div
				style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-color: black; /*  border-style: solid; */ border-radius: 10px; border-style: solid; opacity: 0.9;">
				<h1 class="ui center aligned icon header" style="z-index: 99;">
					<form class="ui form" id="mobileForm">
						<div class="field">
							<label>Title</label> <input type="text" name="first-name"
								placeholder="You can do it!">
						</div>
						<button class="ui button blue fluid"
							onclick="document.location.href='step2LoginSpotify.jsp';">Enter</button>


					</form>
				</h1>
			</div>



		</div>
	</div>
</body>
</html>