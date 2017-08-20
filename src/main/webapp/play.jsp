<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css"></link>
<script src="css/semantic/semantic.min.js">
</script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>

<script src="jquery-3.2.1.min.js"></script>

<script src="auth.js"></script>
<script src="search.js"></script>
<script
	src="https://apis.google.com/js/client.js?onload=googleApiClientReady"></script>
<script
	src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
	
	
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
     			 var score = snapshot.child("player1/playerScore").val();

     			 var time = snapshot.child("player1/timeInput").val();
     			 var guess = snapshot.child("player1/playerInput").val();

     			 document.getElementById("player1").value = name;

     			  document.getElementById("player1").innerHTML = name;

     			  document.getElementById("player1Score").value = "Score: " + score;

     			  document.getElementById("player1Score").innerHTML = "Score: " + score;
    			  
     			  document.getElementById("player1Name").value = name;

    			  document.getElementById("player1Name").innerHTML = name;
    			  
    			  document.getElementById("player1Guess").value = guess;

    			  document.getElementById("player1Guess").innerHTML = guess;

    			  document.getElementById("player1Time").value = time;

    			  document.getElementById("player1Time").innerHTML = time;
    			  
   			   }
     		  if(snapshot.hasChild("player2"))
  			   {
     			 var name = snapshot.child("player2/username").val();
     			 var score = snapshot.child("player2/playerScore").val();

     			 var time = snapshot.child("player2/timeInput").val();
     			 var guess = snapshot.child("player2/playerInput").val();

     			 document.getElementById("player2").value = name;

     			  document.getElementById("player2").innerHTML = name;

     			  document.getElementById("player2Score").value = "Score: " + score;

     			  document.getElementById("player2Score").innerHTML = "Score: " + score;
    			  
     			  document.getElementById("player2Name").value = name;

    			  document.getElementById("player2Name").innerHTML = name;
    			  
    			  document.getElementById("player2Guess").value = guess;

    			  document.getElementById("player2Guess").innerHTML = guess;

    			  document.getElementById("player2Time").value = time;

    			  document.getElementById("player2Time").innerHTML = time;


    			  
  			   }
     		 if(snapshot.hasChild("player3"))
 			   {
     			 var name = snapshot.child("player3/username").val();
     			 var score = snapshot.child("player3/playerScore").val();

     			 var time = snapshot.child("player3/timeInput").val();
     			 var guess = snapshot.child("player3/playerInput").val();

     			 document.getElementById("player3").value = name;

     			  document.getElementById("player3").innerHTML = name;

     			  document.getElementById("player3Score").value = "Score: " + score;

     			  document.getElementById("player3Score").innerHTML = "Score: " + score;
    			  
     			  document.getElementById("player3Name").value = name;

    			  document.getElementById("player3Name").innerHTML = name;
    			  
    			  document.getElementById("player3Guess").value = guess;

    			  document.getElementById("player3Guess").innerHTML = guess;

    			  document.getElementById("player3Time").value = time;

    			  document.getElementById("player3Time").innerHTML = time;
    			  
   			   }
     		if(snapshot.hasChild("player4"))
			   {
     			 var name = snapshot.child("player4/username").val();
     			 var score = snapshot.child("player4/playerScore").val();

     			 var time = snapshot.child("player4/timeInput").val();
     			 var guess = snapshot.child("player4/playerInput").val();

     			 document.getElementById("player4").value = name;

     			  document.getElementById("player4").innerHTML = name;

     			  document.getElementById("player4Score").value = "Score: " + score;

     			  document.getElementById("player4Score").innerHTML = "Score: " + score;
    			  
     			  document.getElementById("player4Name").value = name;

    			  document.getElementById("player4Name").innerHTML = name;
    			  
    			  document.getElementById("player4Guess").value = guess;

    			  document.getElementById("player4Guess").innerHTML = guess;

    			  document.getElementById("player4Time").value = time;

    			  document.getElementById("player4Time").innerHTML = time;
	  		   }
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
    
<script>
	var songArray;
	$(document).ready(function() {
		songArray = new Array();
	});
	function addToQueue() {
		songArray.push($('#link').text());
		/* 		document.getElementById("songs").innerHTML = songArray.toString();
		 */ $('<div class="ui segment" id=' + $('#link').text() + '> <h3 class="ui header"> ' + $('#query').val() + ' </h3> </div>')
	        .appendTo("#listahan");
    
	}
	window.onload = init;
</script>


<style>
</style>

<title>Play</title>
</head>

<body>


	<div class="ui container">
		<br></br>

		<div class="ui grid">
			<div class="ten wide column">
				<h1 class="ui header">
					<i class="music icon"></i>
					<div class="content">
						Music
						<div class="sub header">Manage music to play!</div>
					</div>
				</h1>
				<br>

					<div class="ui segment" style="height: 441px;">

						<!--< img src="/images/vid.png" class="ui image"> </img> -->
						<div
							style="padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"
							id="video"></div>
					</div> <br>
				<h4 class="ui horizontal divider header">
						<i class=" align justify icon"></i> Queue
					</h4> <label style="color: white" id="link">XXXXX</label>
				<div class="ui icon input fluid">

					<!-- <div class="ui action input fluid">
						<input type="text" placeholder="Add Music">
							<button class="ui button" id="search-button"
						disabled="true" onclick="search();">Search</button>
					</div> -->

					 <input type="text" id="query" placeholder="Add Music"> <i
						class="inverted circular search link icon" id="search-button"
						disabled="true" onclick="search();">What is this?</i>
				</div>
				<br>
					<div class="field">
						<label>Just in case you want the video URL</label>
						<div class="ui labeled input fluid">
							<div class="ui label">http://youtube.com/watch?v=</div>
							<input id="url" type="text" placeholder="search first">
								<button class="ui blue right labeled icon button"
									onclick="addToQueue()">
									<i class="plus icon"></i> Add to Queue
								</button>
						</div>
					</div>
				<br>

					<div class="ui animated fade button fluid blue" tabindex="0"
						onclick="myFunction2()">
						<div class="visible content">Play</div>
						<div class="hidden content">Next Song</div>
					</div>
				<div class="ui segments" id="listahan"></div>
			</div>

			<div class="six wide column">

				<h2 class="ui header">
					<i class="users icon"></i>
					<div class="content">Players</div>
				</h2>
				<br> <br>
						<div class="ui segment">

							<h2 class="ui header">
								<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										<h3 id="player1"></h3>
										<div class="sub header">
											<h6 id="player1Score"></h6>
										</div>
									</div>
							</h2>
							<div class="ui fitted divider"></div>

							<h2 class="ui header">
								<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										<h3 id="player2"></h3>
										<div class="sub header">
										
											<h6 id="player2Score"></h6>
										</div>
									</div>
							</h2>

							<div class="ui fitted divider"></div>

							<h2 class="ui header">
								<img src="/images/avatar.jpg" class="ui circular image"> </img>
								<div class="content">
									<h3 id="player3"></h3>
									<div class="sub header">
									
											<h6 id="player3Score"></h6>
									</div>
								</div>
							</h2>
							<div class="ui fitted divider"></div>

							<h2 class="ui header">
								<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										<h3 id="player4"></h3>
										<div class="sub header">
											<h6 id="player4Score"></h6>
										</div>
									</div>
							</h2>
						</div> <br></br>

						<h2 class="ui header">
							<i class="send outline icon"></i>
							<div class="content">Guesses</div>
						</h2> <br>
							<div class="ui comments">
								<div class="comment">
									<a class="avatar"> <img src="/images/avatar.jpg"></a>
									<div class="content">
										<a class="author" id="player1Name"></a>
										<div class="metadata">
											<span class="date" id="player1Time"></span>
										</div>
										<div class="text"><h4 id="player1Guess"></h4></div>
										<div class="actions">
											<a class="reply"></a>
										</div>
									</div>
								</div>
								<div class="comment">
									<a class="avatar"> <img src="/images/avatar.jpg"></a>
									<div class="content">
										<a class="author" id="player2Name"></a>
										<div class="metadata">
											<span class="date" id="player2Time"></span>
										</div>
										<div class="text"><h4 id="player2Guess"></h4></div>
										<div class="actions">
											<a class="reply"></a>
										</div>
									</div>
								</div>
								<div class="comment">
									<a class="avatar"> <img src="/images/avatar.jpg"></a>
									<div class="content">
										<a class="author" id="player3Name"></a>
										<div class="metadata">
											<span class="date" id="player3Time"></span>
										</div>
										<div class="text"><h4 id="player3Guess"></h4></div>
										<div class="actions">
											<a class="reply"></a>
										</div>
									</div>
								</div>
								<div class="comment">
									<a class="avatar"> <img src="/images/avatar.jpg"></a>
									<div class="content">
										<a class="author" id="player4Name"></a>
										<div class="metadata">
											<span class="date" id="player4Time"></span>
										</div>
										<div class="text"><h4 id="player4Guess"></h4></div>
										<div class="actions">
											<a class="reply"></a>
										</div>
									</div>
								</div>
							</div>
			</div>


		</div>
		<br></br> <br></br> <br></br>
	</div>

	<!-- 	<div class="ui raised segment"
		style="position: fixed; bottom: 0; width: 100%;">
		<h2 class="ui header">
			<i class="volume up icon"></i>
			<div class="content">
				ILYSB
				<div class="sub header">Lany</div>
			</div>
		</h2>
	</div>
 -->












	<script>
		var started = 0;
		var player;
		function myFunction2() {
			if (started == 0) {
				myFunction();
				started = 1;
			} else {
				if (player != null) {
					player.loadVideoById({
						videoId : songArray[0]
					});
				}
				/* 		          document.getElementById("songs").innerHTML = songArray.toString();
				 */}
			var firstSong = songArray[0];
			console.log(firstSong);
			var element = document.getElementById(firstSong);
			element.parentNode.removeChild(element);
			songArray.shift();
			
			
			var roomName = "/<%=session.getAttribute("roomName")%>"; 
	        var ref = firebase.database().ref(roomName);
	        
	       ref.once('value', function(snapshot){
            if(snapshot.exists()){
            	 if(snapshot.hasChild("currentSong"))
            		 {
            		 	var obj = {"currentSong" : $('#query').val()};
	       
	       				ref.update(obj);
	       		
	       				var obj = {"isStarted" : true};
	       		       
	       				ref.update(obj);
	       				
	       				var obj = {"isGuessed" : false};
		       		       
	       				ref.update(obj);
            		 }
            }
	       });
			
		}
		function myFunction() {
			document.getElementById("video").innerHTML = "<div id='player'></div>";
			// 2. This code loads the IFrame Player API code asynchronously.
			var tag = document.createElement('script');
			tag.src = "https://www.youtube.com/iframe_api";
			var firstScriptTag = document.getElementsByTagName('script')[0];
			firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
		}
		// 3. This function creates an <iframe> (and YouTube player)
		//    after the API code downloads.
		function onYouTubeIframeAPIReady() {
			player = new YT.Player('player', {
				height : '390',
				width : '640',
				videoId : songArray[0],
				events : {
					'onReady' : onPlayerReady,
					'onStateChange' : onPlayerStateChange
				}
			});
		}
		// 4. The API will call this function when the video player is ready.
		function onPlayerReady(event) {
			event.target.playVideo();
		}
		// 5. The API calls this function when the player's state changes.
		//    The function indicates that when playing a video (state=1),
		//    the player should play for six seconds and then stop.
		var done = false;
		function onPlayerStateChange(event) {
			if (event.data == YT.PlayerState.PLAYING && !done) {
				//setTimeout(stopVideo, 6000);
				done = true;
			}
		}
		function stopVideo() {
			player.stopVideo();
		}
	</script>


</body>
</html>