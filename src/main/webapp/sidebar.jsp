<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="ui small vertical steps fluid">



	
	<div id = "first" class="step">
		<i class="small television icon"></i>
		<div class="content">
			<div class="title">Room</div>
			<div class="description">Before you play</div>
		</div>
	</div>
	<!-- <div id = "second" class="step">
		<i class="small spotify icon"></i>
		<div class="content">
			<div class="title">Spotify</div>
			<div class="description">Almost there</div>
		</div>
	</div> -->
	<div id = "third" class="step">

		<i class="small checkmark icon"></i>
		<div class="content">
			<div class="title">Confirmed</div>
			<div class="description">Get ready to play</div>
		</div>
	</div>
	<div id = "fourth" class="step">
		<i class="small child icon"></i>
		<div class="content">
			<div class="title">Done</div>
			<div class="description">Play!</div>
		</div>
	</div>
</div>

	<script>
		var title = document.title;
		
		if(title == "Create A Room"){
			document.getElementById('first').className += ' active'
		}
		
		if(title == "Login to Spotify"){
			document.getElementById('second').className += ' active'
		}
		
		if(title == "Confirmed"){
			document.getElementById('third').className += ' active'
		}
		
		if(title == "Done"){
			document.getElementById('fourth').className += ' active'
		}
		
		
	</script>
	
