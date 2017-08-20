<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=0.6">


<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css"></link>
<script src="css/semantic/semantic.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>

<script src="js/jquery.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
	<script>
	  // Initialize Firebase
	  var config = {
	    apiKey: "AIzaSyClMtfVRNRqiQ0fUb1ipzEFfD6m_Q8JTRE",
	    authDomain: "nxttech-teamtation.firebaseapp.com",
	    databaseURL: "https://nxttech-teamtation.firebaseio.com",
	    projectId: "nxttech-teamtation",
	    storageBucket: "nxttech-teamtation.appspot.com",
	    messagingSenderId: "1034042438371"
	  };
	  firebase.initializeApp(config);
	</script>
	
 	<script src="https://cdn.firebase.com/libs/firebaseui/2.3.0/firebaseui.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/2.3.0/firebaseui.css" />
    <script type="text/javascript">
      // FirebaseUI config.
      
      $(document).ready(function() {
    	  
    	  if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
					.test(navigator.userAgent)) 
			{
			
			$('#webPage').remove();
			
			  // Initialize the FirebaseUI Widget using Firebase.
		      var ui = new firebaseui.auth.AuthUI(firebase.auth());
		      // The start method will wait until the DOM is loaded.
		      ui.start('#firebaseui-auth-container', uiConfig);
			}
			else
			{
				$('#mobilePage').remove();
				  // Initialize the FirebaseUI Widget using Firebase.
			      var ui = new firebaseui.auth.AuthUI(firebase.auth());
			      // The start method will wait until the DOM is loaded.
			      ui.start('#firebaseui-auth-container1', uiConfig);
			}
			  
			    	  
      });        
      
      
      if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
								.test(navigator.userAgent)) 
      {
    	
	      var uiConfig = {
	        signInSuccessUrl: 'joinRoom.jsp',
	        signInOptions: [
	          // Leave the lines as is for the providers you want to offer your users.
	          firebase.auth.GoogleAuthProvider.PROVIDER_ID
	        ],
	        // Terms of service url.
	        tosUrl: '<your-tos-url>'
	      };
      }
      else
		{
  	  	  var uiConfig = {
    		        signInSuccessUrl: 'step1CreateRoom.jsp',
    		        signInOptions: [
    		          // Leave the lines as is for the providers you want to offer your users.
    		          firebase.auth.GoogleAuthProvider.PROVIDER_ID
    		        ],
    		        // Terms of service url.
    		        tosUrl: '<your-tos-url>'
    		      };
		}
   
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






<title>Guess the Song</title>
</head>

<body>

		<div id="particles-js" style="">
			<div class="container" style="background-color: white;">
	
	
				<jsp:include page="particles.jsp" />
	
					<div id="mobilePage" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-color: black; /*  border-style: solid; */ border-radius: 10px; border-style: solid; opacity: 0.9;">
					<h1 class="ui center aligned icon header" style="z-index: 99;">
						<br><br> <i class="music icon"></i><br><br>
						<div class="ui center header">GUESS THE SONG</div>
						<h4>Visit this webpage on a desktop to learn more about the game.</h4>
						<div id="firebaseui-auth-container"></div>
					</h1>
	
	
					</div>
						
	
				<div id="webPage">
					<div class="ui center"
								style="position: fixed; top: 50%; left: 35%; transform: translate(-50%, -50%);  padding: 20px; border-radius: 0px; opacity: 0.9;">
										<label style="color:white; font-size:60px;"><b>GUESS THE SONG</b></label>
										<h4 style="color:white; width:90%;" class="ui inverted text">Play with 4 of your friends and determine who can be the fastest one to guess the songs playing.</h4>
										<div style="padding-left:90px;" id="firebaseui-auth-container1"></div>
					</div>
										
							<div
								style="position: fixed; top: 50%; left: 70%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-color: black; /*  border-style: solid; */ border-radius: 1px; border-style: solid; opacity: 0.9;">
								<div class="ui text">
								<h2>HOW TO PLAY?</h2>
								<h5>
								THE HOST:
								<br>
								<br>
								1. Sign in to your Google Account
								<br>
								2. Create a room
								<br>
								3. Wait for your 4 players to join the room
								<br>
								4. Start the game by adding songs to the queue
								<br>
								<br>
								THE PLAYERS:
								<br>
								<br>
								1. Access this website on their mobile phones
								<br>
								2. Sign in with their Google Accounts
								<br>
								3. Enter the room name and join the room
								<br>
								4. Play the game by guessing the current song playing!
								</h5>
								
								</div>
								
				
							</div>
				
				</div>
		</div>
					
	</div>
	
</body>
</html>

