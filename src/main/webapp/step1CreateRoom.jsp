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
      
      function addRoom()
      {
    	  var username = document.getElementById("username").value;
    	  console.log("username" + username);
    	  var checker = false;
    		var roomName = document.getElementById("roomName").value;
          var ref = firebase.database().ref(roomName);
          ref.once('value', function(snapshot) {
        	   if (snapshot.exists())
        		{
        		  alert ("Room name is taken.");
        		}
        	   else
        		{
        		   checker = true;
        		   var obj = {"hostUsername" : username, "isGuessed" : false, "isStarted": false, "currentSong" : ""};
	               ref.push(obj);   // Creates a new ref with a new "push key"
	               ref.set(obj);    // Overwrites the path
	               ref.update(obj); // Updates only the specified attributes
	               window.location = "/Step2?roomName="+roomName;
        		}
        	});
         
    	}
 
      
    </script>


<title>Create A Room</title>
</head>
<body>
	<div class="container" style="background-color: white;">
		<div class="ui container">
			<br>
			<br>
			<h1 class="ui header headerc">Guess the Song</h1>
			<h5 id="username"></h5>
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
									
								</div>
							</div>
							<div class="ui twelve wide column">
									
									<form class="ui form">
									<div class="field">
										<label>Room Name</label> 
										<input type="text" id="roomName" placeholder="Come up with something nice">
									</div>
									
									</form>
								<!-- type="submit" -->
								<br>
								<button onclick="addRoom();" class="ui button blue fluid">Submit</button>
									

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