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











<!-- <script src="https://www.gstatic.com/firebasejs/4.1.3/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.1.3/firebase-auth.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/4.1.3/firebase-database.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/4.1.3/firebase-messaging.js"></script>

Leave out Storage
<script src="https://www.gstatic.com/firebasejs/4.1.3/firebase-storage.js"></script>

<script>
	var config = {
	// ...
	};
	firebase.initializeApp(config);
</script>

<script src="https://www.gstatic.com/firebasejs/4.1.3/firebase.js"></script>
<script>
	// Initialize Firebase
	var config = {
		apiKey : "AIzaSyClMtfVRNRqiQ0fUb1ipzEFfD6m_Q8JTRE",
		authDomain : "nxttech-teamtation.firebaseapp.com",
		databaseURL : "https://nxttech-teamtation.firebaseio.com",
		projectId : "nxttech-teamtation",
		storageBucket : "nxttech-teamtation.appspot.com",
	/* 		messagingSenderId : "1034042438371"
	 */};
	firebase.initializeApp(config);
	// Get a reference to the database service
	var database = firebase.database();

	var name = "glenn";
	var rommID = "1";
	var userID = "2";

	function writeUserData() {
		firebase.database().ref('users/' + userID).set({
			name : name,
			roomID : roomID,
		});
	}
</script>
 -->

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

<title>Guess the song</title>
</head>

<body>
	<div id="particles-js" style="">
		<div class="container" style="background-color: white;">


			<jsp:include page="particles.jsp" />

			<div
				style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-color: black; /*  border-style: solid; */ border-radius: 10px; border-style: solid; opacity: 0.9;">
				<h1 class="ui center aligned icon header" style="z-index: 99;">
					<br> <i class="music icon"></i><br>
							<div class="ui center header">Guess the Song</div>

							<div class="ui large blue button"
								onclick="document.location.href='step1CreateRoom.jsp';">
								Get Started</div>
				</h1>
			</div>

		</div>
	</div>
</body>
</html>