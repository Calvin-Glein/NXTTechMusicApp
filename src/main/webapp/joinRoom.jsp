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
      initApp = function() {
        firebase.auth().onAuthStateChanged(function(user) {
          if (user) {
            // User is signed in.
            var displayName = user.displayName;
            var uid = user.uid;
            document.getElementById("username").value = displayName;
            document.getElementById("username").innerHTML = displayName;
            
          } else {
            // User is signed out.
	        window.alert("There was an error in logging in your Google account.");
            window.location.href("index.jsp");
          }
        }, function(error) {
          console.log(error);
        });
      };

      window.addEventListener('load', function() {
        initApp()
      });
      
      function joinRoom()
      {
    	  var username = document.getElementById("username").value;
    	  console.log("username" + username);
    	  var checker = false;
    		var roomName = document.getElementById("roomName").value;
          var ref = firebase.database().ref(roomName);
          ref.once('value', function(snapshot) {
        	   if (snapshot.exists())
        		{
        		   if(!snapshot.hasChild("player1"))
       			   {
        			   var obj = {"player1" : 
			        			   {"username" : username, 
			        			   "playerScore" : 0,
			        			   "timeInput" : 0,
				        			"playerInput" : ""},
			        			   };
        		
    	               ref.update(obj); // Updates only the specified attributes
            		   

    	               window.location = "/JoinGame?roomName="+roomName+"&username="+username+"&player=player1";
       			   }
        		   else if(!snapshot.hasChild("player2"))
       			   {
        			   var obj = {"player2" : 
        			   {"username" : username, 
	        			   "playerScore" : 0,
	        			   "timeInput" : 0,
		        		   "playerInput" : ""},
	        			   };
    	               ref.update(obj); // Updates only the specified attributes

    	               window.location = "/JoinGame?roomName="+roomName+"&username="+username+"&player=player2";
       			   }
        		   else if(!snapshot.hasChild("player3"))
       			   {
        			   var obj = {"player3" : 
        			   {"username" : username, 
        			   "playerScore" : 0,
        			   "timeInput" : 0,
	        		   "playerInput" : ""},
        			   };
        			   ref.update(obj); // Updates only the specified attributes
            		   
					    window.location = "/JoinGame?roomName="+roomName+"&username="+username+"&player=player3";
    	           }
        		   else if(!snapshot.hasChild("player4"))
       			   {
        			   var obj = {"player4" : 
        			   {"username" : username, 
        			   "playerScore" : 0,
        			   "timeInput" : 0,
	        			"playerInput" : ""},
        			   };
        			   ref.update(obj); // Updates only the specified attributes
    	               window.location = "/JoinGame?roomName="+roomName+"&username="+username+"&player=player4";
    	        		
       			   }
        		   else if(snapshot.hasChild("player1") 
        				   && snapshot.hasChild("player2")
        				   && snapshot.hasChild("player3")
        				   && snapshot.hasChild("player4"))
        			   {
        			   alert("Room is already full!");
   	        		
        			   }
        		   else
	        		{
	        		   alert("Room does not exist!");
	        		 }
        		}
        	});
         
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


<title>Guess the song</title>
</head>

<body>
	<div id="particles-js" style="position: fixed;">
		<div class="container" style="background-color: white;">


			<jsp:include page="particles.jsp" />

			<div
				style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-color: black; /*  border-style: solid; */ border-radius: 10px; border-style: solid; opacity: 0.9;">
				<h4 class="ui center aligned icon header" style="z-index: 99;">
					<br></br> <i class="music icon"></i><br></br>
					<div class="ui center header">GUESS THE SONG</div>

					<!-- <div id="getStarted" class="ui large blue button"
						onclick="document.location.href='step1CreateRoom.jsp';">Get
						Started</div> -->
						
						
				</h4>
				<form class="ui form" id="mobileForm">
					<div class="field">
						<label>Room Name</label>
						 <input type="text" id="roomName" placeholder="Ask your friend">
					</div>
					<div class="field">
						<label>Username</label> <input type="text" id="username" readonly>
					</div>
					<div class="ui button blue fluid"
						onclick="joinRoom();">Enter Room</div>


				</form>
				


				<script>
					
				</script>
			</div>

		</div>
	</div>
</body>
</html>