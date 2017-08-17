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


<script src="jquery-3.2.1.min.js"></script>

<script src="auth.js"></script>
<script src="search.js"></script>
<script
	src="https://apis.google.com/js/client.js?onload=googleApiClientReady"></script>
<script
	src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
<script>
	var songArray;
	$(document).ready(function() {
		songArray = new Array();
	});

	function addToQueue() {
		songArray.push($('#link').text());
		document.getElementById("songs").innerHTML = songArray.toString();
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

					<div class="ui segment inverted">

						<!--< img src="/images/vid.png" class="ui image"> </img> -->
						<div style = "padding-left: 10px; padding-top: 10px; padding-bottom: 10px;"id="video"></div>
					</div> <br>
				<h4 class="ui horizontal divider header">
						<i class=" align justify icon"></i> Queue
					</h4> <label id="link"></label>
				<div class="ui icon input fluid">
					<input type="text" id="query" placeholder="Add Music"> <i
						class="inverted circular search link icon" id="search-button"
						disabled="true" onclick="search()"></i>
				</div>

				<label>Song id List</label>
				<div id="songs"></div>
				<button onclick="addToQueue()">Add To Queue</button>
				<button onclick="myFunction2()">play</button>

				<div class="ui segments">
					<div class="ui segment">
						<h3 class="ui header">
							Congratulations
							<div class="sub header">Post Malone</div>
						</h3>
					</div>
					<div class="ui segment">
						<h3 class="ui header">
							Caroline
							<div class="sub header">Amine</div>
						</h3>
					</div>
					<div class="ui segment">
						<h3 class="ui header">
							ILYSB
							<div class="sub header">Lany</div>
						</h3>
					</div>
					<div class="ui segment">
						<h3 class="ui header">
							Humble
							<div class="sub header">Kendrick Lamar</div>
						</h3>
					</div>
					<div class="ui segment">
						<h3 class="ui header">
							Fine China
							<div class="sub header">Chris Brown</div>
						</h3>
					</div>

				</div>
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
										Joanna
										<div class="sub header">Score: 10</div>
									</div>
							</h2>
							<div class="ui fitted divider"></div>

							<h2 class="ui header">
								<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										Glenn
										<div class="sub header">Score: 8</div>
									</div>
							</h2>

							<div class="ui fitted divider"></div>

							<h2 class="ui header">
								<img src="/images/avatar.jpg" class="ui circular image"> </img>
								<div class="content">
									Paolo
									<div class="sub header">Score: 5<</div>
								</div>
							</h2>
							<div class="ui fitted divider"></div>

							<h2 class="ui header">
								<img src="/images/avatar.jpg" class="ui circular image">
									<div class="content">
										Nao
										<div class="sub header">Score: 3<</div>
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
										<a class="author">Joanna</a>
										<div class="metadata">
											<span class="date">Today at 5:42PM</span>
										</div>
										<div class="text">I love you so bad</div>
										<div class="actions">
											<a class="reply">Incorrect</a>
										</div>
									</div>
								</div>
								<div class="comment">
									<a class="avatar"> <img src="/images/avatar.jpg"></a>
									<div class="content">
										<a class="author">Glenn</a>
										<div class="metadata">
											<span class="date">Today at 5:42PM</span>
										</div>
										<div class="text">Hurts so good</div>
										<div class="actions">
											<a class="reply">Incorrect</a>
										</div>
									</div>
								</div>
								<div class="comment">
									<a class="avatar"> <img src="/images/avatar.jpg"></a>
									<div class="content">
										<a class="author">Paolo</a>
										<div class="metadata">
											<span class="date">Today at 5:42PM</span>
										</div>
										<div class="text">ILYSB</div>
										<div class="actions">
											<a class="reply">Correct</a>
										</div>
									</div>
								</div>
							</div>
			</div>


		</div>
		<br></br> <br></br> <br></br>
	</div>

	<div class="ui raised segment"
		style="position: fixed; bottom: 0; width: 100%;">

		<h2 class="ui header">
			<i class="play icon"></i> <i class="play icon"></i>

			<div class="content">
				ILYSB
				<div class="sub header">Lany</div>
			</div>
		</h2>
	</div>














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
				songArray.shift();
				document.getElementById("songs").innerHTML = songArray
						.toString();
			}
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
				videoId : $("#link").text(),
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