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
        
        var roomName = "/<%=session.getAttribute("roomName")%>"; 
        var ref = firebase.database().ref(roomName);
        
       ref.on('value', function(snapshot){
            if(snapshot.exists()){

     		   if(snapshot.hasChild("player1"))
   			   {
     			  var name = snapshot.child("player1/username").val();
	  			  document.getElementById("player1").value = name;

     			  document.getElementById("player1").innerHTML = name;
   			   }
     		  if(!snapshot.hasChild("player1"))
  			   {
	  			  document.getElementById("player1").value = "";

    			  document.getElementById("player1").innerHTML = "";
  			   }
     		  if(snapshot.hasChild("player2"))
  			   {
    			  var name = snapshot.child("player2/username").val();
	  			  document.getElementById("player2").value = name;

    			  document.getElementById("player2").innerHTML = name;
  			   }
     		 if(!snapshot.hasChild("player2"))
			   {
	  			  document.getElementById("player2").value = "";

  			  document.getElementById("player2").innerHTML = "";
			   }
     		  
     		 if(snapshot.hasChild("player3"))
 			   {
	   			  var name = snapshot.child("player3/username").val();
	  			  document.getElementById("player3").value = name;

	   			  document.getElementById("player3").innerHTML = name;
   			   }
     		if(!snapshot.hasChild("player3"))
			   {
	  			  document.getElementById("player3").value = "";

 			  document.getElementById("player3").innerHTML = "";
			   }
	     	if(snapshot.hasChild("player4"))
			   {
	  			  var name = snapshot.child("player4/username").val();
	  			  document.getElementById("player4").value = name;

	  			  document.getElementById("player4").innerHTML = name;
	  		   }
            }
            if(!snapshot.hasChild("player4"))
			   {
	  			  document.getElementById("player4").value = "";

 			  document.getElementById("player4").innerHTML = "";
			   }
            if(snapshot.hasChild("player1")
            	&&	snapshot.hasChild("player2")
            	&&	snapshot.hasChild("player3")
            	&&  snapshot.hasChild("player4"))
       		{
            	document.getElementById("buttonPlay").disabled = false;
       		} 
       });
      });
      
 
      
    </script>
	
<title>Players</title>
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
								<div class="left aligned">Room  Name :  <%=session.getAttribute("roomName")%></div>
							</div>
						</div>
					</h3>
					<div class="ui segment">
						<div class="ui grid">

							<div class="ui sixteen wide column">

								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										<h3 id="player1"></h3>
										<div class="sub header">Player 1</div>
									</div>
								</h2>
								<div class="ui fitted divider"></div>
								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										<h3 id="player2"></h3>
										<div class="sub header">Player 2</div>
									</div>
								</h2>

								<div class="ui fitted divider"></div>

								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
									<h3 id="player3"></h3>
										<div class="sub header">Player 3</div>
									</div>
								</h2>
								<div class="ui fitted divider"></div>
								<h2 class="ui header">
									<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
									<h3 id="player4"></h3>
										<div class="sub header">Player 4</div>
									</div>
								</h2>



							</div>
						</div>
					</div>
					<br>
					<h4>You must wait for 4 players before starting the game.</h4>
					<button class="ui button blue fluid" id="buttonPlay"
						onclick="document.location.href='play.jsp';" disabled>Play!</button>



				</div>
			</div>
		</div>

		<br> <br> <br> <br>
	</div>
</body>
</html>