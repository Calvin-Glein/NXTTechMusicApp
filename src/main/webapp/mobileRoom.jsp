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
        
        var path = "/<%=session.getAttribute("roomName")%>/<%=session.getAttribute("player")%>"; 
        
        var ref = firebase.database().ref(path);
        var zero = 0;
        ref.on('value', function(snapshot) {
      	   if (snapshot.exists())
      		{
      		 if(snapshot.hasChild("playerScore"))
 			   {
      			 document.getElementById("playerScore").innerHTML = "Your score: " + snapshot.child("playerScore").val();
      		   }
      		}
      	   
      	});
        
        var ref = firebase.database().ref( "/<%=session.getAttribute("roomName")%>");
        var zero = 0;
        ref.on('value', function(snapshot) {
      	   if (snapshot.exists())
      		{
      		 if(snapshot.hasChild("isGuessed"))
 			   {
      				if(snapshot.child("isGuessed").val())
    				{
      					
      					var inc = document.getElementById("incorrect");
      					if(!$(inc).html() == "Correct!")
      					document.getElementById("incorrect").innerHTML = "The song has already been guessed!"
			   				
      					document.getElementById("inputText").innerHTML = "";
    	               	document.getElementById("inputText").value = "";
    	              
    	               	
     				}
      				if(!snapshot.child("isGuessed").val())
    				{
      					
      					document.getElementById("inputText").innerHTML = "";
    	               	document.getElementById("inputText").value = "";
    	              
    	               	
     				}
      		   }
      		 
      		}
      	   
      	});
        
        
      });
      
      function submitInput()
      {
    	  
    	  var path = "/<%=session.getAttribute("roomName")%>";
    	  var ref = firebase.database().ref(path);
          ref.once('value', function(snapshot) {
        	   if (snapshot.exists())
        		{
        		   if(snapshot.child("isStarted").val())
	   			   {
		 		 		
        			   if(snapshot.hasChild("currentSong"))
		   			   {
		 		  			var correct = snapshot.child("currentSong").val();
		   			   		correct = correct.toLowerCase();
		   			     	var inputText = document.getElementById("inputText").value;
		   		    	 
			   			 	var obj = {"<%=session.getAttribute("player")%>/playerInput" : inputText};
	    	               	ref.update(obj);
	    	               	
		   			   		if(correct.includes(inputText))
	   			   			{
		   			   			if(!snapshot.child("isGuessed").val())
   			   					{
		   			   			
		   			   				var obj = {"isGuessed" : true};
		   			   				document.getElementById("incorrect").innerHTML = "Correct!"
					   				
			    	               	ref.update(obj);
									
			    	               	document.getElementById("inputText").innerHTML = "";
			    	               	document.getElementById("inputText").value = "";
			    	               
			    	              
			    	               	var score = snapshot.child("<%=session.getAttribute("player")%>/playerScore").val();
			    	               	
			    	               	score = score+1;
			    	               	
			    	            	var obj = {"<%=session.getAttribute("player")%>/playerScore" : score};
			    	               	ref.update(obj);
			    	               	
			    	               	var d = new Date(); // for now
			    	               	var hours = d.getHours(); // => 9
			    	               	var minutes = d.getMinutes(); // =>  30
			    	               	var seconds = d.getSeconds(); // => 51
			    	               	
			    	               	if(d.getHours < 10)
			    	               		hours = "0"+d.getHours;
			    	               	if(d.getMinutes < 10)
			    	               		minutes = "0"+d.getMinutes;
			    	               	if(d.getSeconds < 10)
			    	               		seconds = "0"+d.getSeconds;
			    	               	
			    	               	
			    	               	var stringDate = hours + ":" + minutes + ":" + seconds;
			    	               	var obj = {"<%=session.getAttribute("player")%>/timeInput" : stringDate};
			    	               	ref.update(obj);
			    	               	
				    	            
   			   					}  
		   			   			else
	   			   				{
			   			   			var d = new Date(); // for now
			    	               	var hours = d.getHours(); // => 9
			    	               	var minutes = d.getMinutes(); // =>  30
			    	               	var seconds = d.getSeconds(); // => 51
			    	               	
			    	               	if(d.getHours < 10)
			    	               		hours = "0"+d.getHours;
			    	               	if(d.getMinutes < 10)
			    	               		minutes = "0"+d.getMinutes;
			    	               	if(d.getSeconds < 10)
			    	               		seconds = "0"+d.getSeconds;
			    	               	
			    	               	
			    	               	var stringDate = hours + ":" + minutes + ":" + seconds;
			    	               	var obj = {"<%=session.getAttribute("player")%>/timeInput" : stringDate};
			    	               	ref.update(obj);
	   			   				}
	   			   			}
		   			   		else
			   				{
			   					document.getElementById("incorrect").innerHTML = "Incorrect!"
			   				}
		   			   }
        			   else
		   				{
		   					return true;
		   				}
		   		   }
        		   else
	   				{
	   					return true;
	   				}
        		   
        		}
        	   else
	   				{
	   					return true;
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

<title>Play</title>
</head>

<body>
	<div id="particles-js" style="">
		<div class="container" style="background-color: white;">
			<jsp:include page="particles.jsp" />
			<div style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-color: black; /*  border-style: solid; */ border-radius: 10px; border-style: solid; opacity: 0.9;">
				<h1 class="ui center aligned icon header" style="z-index: 99;">
						<h3 id="playerScore"></h3>
						<form class ="ui form">
						<div class="field">
							<h3 id="incorrect"></h3>
							<label>Title</label> 
							<input type="text" id="inputText" placeholder="You can do it!">
						</div>
						</form>
						<button class="ui button blue fluid" onclick="submitInput();">Enter</button>
						
				</h1>
						
			</div>
			

			
			


		</div>
	</div>
</body>
</html>