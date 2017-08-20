<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<script src="jquery-3.2.1.min.js"></script>


<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css"></link>
<script src="css/semantic/semantic.min.js"></script>



<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
<script>
	// Initialize Firebase
	var config = {
		apiKey : "AIzaSyClMtfVRNRqiQ0fUb1ipzEFfD6m_Q8JTRE",
		authDomain : "nxttech-teamtation.firebaseapp.com",
		databaseURL : "https://nxttech-teamtation.firebaseio.com",
		projectId : "nxttech-teamtation",
		storageBucket : "nxttech-teamtation.appspot.com",
		messagingSenderId : "1034042438371"
	};
	firebase.initializeApp(config);
</script>

<script
	src="https://cdn.firebase.com/libs/firebaseui/2.3.0/firebaseui.js"></script>
<link type="text/css" rel="stylesheet"
	href="https://cdn.firebase.com/libs/firebaseui/2.3.0/firebaseui.css" />
<script type="text/javascript">
	// FirebaseUI config.

	if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
			.test(navigator.userAgent)) {
		var uiConfig = {
			signInSuccessUrl : 'joinRoom.jsp',
			signInOptions : [
			// Leave the lines as is for the providers you want to offer your users.
			firebase.auth.GoogleAuthProvider.PROVIDER_ID ],
			// Terms of service url.
			tosUrl : '<your-tos-url>'
		};
	} else {
		var uiConfig = {
			signInSuccessUrl : 'step1CreateRoom.jsp',
			signInOptions : [
			// Leave the lines as is for the providers you want to offer your users.
			firebase.auth.GoogleAuthProvider.PROVIDER_ID ],
			// Terms of service url.
			tosUrl : '<your-tos-url>'
		};
	}

	// Initialize the FirebaseUI Widget using Firebase.
	var ui = new firebaseui.auth.AuthUI(firebase.auth());
	// The start method will wait until the DOM is loaded.
	ui.start('#firebaseui-auth-container', uiConfig);
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
					<div class="ui center header">GUESS THE SONG</div>

					<!-- <div id="getStarted" class="ui large blue button"
						onclick="document.location.href='step1CreateRoom.jsp';">Get
						Started</div> -->

					<div id="firebaseui-auth-container"></div>

					<button class="ui button basic" onclick="showWhat();">What
						is this?</button>

					<script>
						function showWhat() {
							$('.ui.modal').modal({
								blurring : true
							}).modal('show');

							console.log("test");
						}
					</script>
				</h1>


			</div>

		</div>
	</div>




	<div class="ui modal" style="z-index: 10000;">
		<i class="close icon"></i>
		<div class="header">What is Guess The Song?</div>
		<div class="image content">
			<div class="image">
				<img src="images/logo.png">
			</div>
			<div class="description">
				Play with 4 of your friends and determine who can be the fastest one
				to guess the songs playing!. <br></br>

				<h3 class="ui header">Instructions</h3>
				<ol class="ui list">
					<li>Invite 4 of your friends to access this website through
						their mobile phones</li>
					<li>Sign in with your Google account</li>
					<li>Name and Create a Room to host your game</li>
					<li>Let your friends know the name of the Room you just
						created so that they can join</li>
					<li>Wait for all 4 players to join</li>
					<li>Play!
						<ol>
							<li>Search songs the built-in Youtube player and add them on
								the queue of songs to be played</li>
							<li>Let your friends guess the song playing through their
								mobile phones</li>
						</ol>


					</li>

				</ol>
			</div>
		</div>
		<div class="actions">
			<div class="ui button">Cancel</div>
			<div class="ui button">OK</div>
		</div>
	</div>

</body>
</html>