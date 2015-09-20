<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<<<<<<< HEAD
<html> 
<head> 
	<title>Qarch</title> 
	<link rel="stylesheet" type="text/css" href="stylesheets/main.css">
	<link rel="stylesheet" type="text/css" href="stylesheets/nav.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
	<script type="text/javascript" src="https://maps.google.com/maps/api/js?libraries=places&sensor=false"></script>
	<script src="javascript/three.min.js"></script>
	<script src="javascript/GSVPano.js"></script>
	<script src="javascript/Hyperlapse.js"></script>
	<script src="javascript/primary.js"></script>
</head> 
<body > 
<%

%>
<header>
  <nav class="mobile-nav-wrap" role="navigation">
    <ul class="mobile-header-nav">
      <li><a href="#">Nav Item 1</a></li>
      <li><a href="#">Nav Item 2</a></li>
      <li><a href="#">Nav Item 3</a></li>
    </ul>
  </nav>

  <a class="mobile-menu-toggle js-toggle-menu hamburger-menu" href="#">
    <span class="menu-item"></span>
    <span class="menu-item"></span>
    <span class="menu-item"></span>
  </a> 
</header>
    <div id="directions-panel"></div>
	<div id="box" style="display:inline-flex;">
		<input id="pac-input" class="controls" type="text" placeholder="Search Box" x-webkit-speech="x-webkit-speech">
		<div id="pano" style="margin-left:12px;"></div>
		<div id="map" style="width: 600px; height: 600px; float: left; padding: 0;"></div>
	</div>	
	<button id="play" >Start</button>
	<button id="stop" >Stop</button>
	<button id="next" >Next</button>
	<button id="prev" >Prev</button>
	<button id="load" >Load</button>

</div><!-- End of the second page -->
<script>
// open mobile menu
$('.js-toggle-menu').click(function(e){
  e.preventDefault();
  $('.mobile-header-nav').slideToggle();
  $(this).toggleClass('open');
});
</script>
</body> 
</html>
=======
<html>
<head>
    <title>Qarch</title>
    <link rel="stylesheet" type="text/css" href="stylesheets/main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?libraries=places&sensor=false"></script>
    <script src="javascript/three.min.js"></script>
    <script src="javascript/GSVPano.js"></script>
    <script src="javascript/Hyperlapse.js"></script>
    <script src="javascript/primary.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Lato:300|Roboto' rel='stylesheet' type='text/css'>
</head>
<body>
    <div id="outer_wrapper">
        <div id="directions-panel"></div>
        <div id="box" style="display:inline-flex;">
            <div id="map"></div>
            <input id="pac-input" class="controls" type="text" placeholder="Search Box">
            <div id="pano"></div>

        </div>
        <div id="buttons">
            <button id="load">Load</button>
            <button id="play">Start</button>
            <button id="stop">Stop</button>
            <button id="next">Next</button>
            <button id="prev">Prev</button>
        </div>

        <h3>Load first and then adjust points</h3>
    </div>
    <!-- End of the second page -->
</body>
</html>

<style>
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        background-position: center;
        overflow-x: hidden;
        font-family: 'Lato','Century Gothic',sans-serif;
    }

    #directions-panel {
        margin-top: 2em;
    }

    * {
        transition: none;
    }

    span {
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
    }

    #outer_wrapper {
        background-color: white;
        height: 100%;
        width: 100%;
        position: relative;
    }

    #pano {
        margin-left: 12px;
        background-image: url("http://sriajith.info/wp-content/uploads/2015/07/google-maps-banner-2_0.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-repeat: no-repeat;
        -ms-background-size: contain;
        background-size: contain;
        background-position: center;
    }

    #buttons {
        margin-top: 10px;
        text-align: center;
        float: none;
    }

        #buttons button {
            margin-left: 1em;
            margin-right: 1em;
            background-color: lightgrey;
            border: 3px solid #455A64;
            border-radius: 5px;
            text-align: center;
        }

    #map {
        width: 500px;
        height: 500px;
        float: left;
        padding: 0;
        margin-left: 10px;
    }

    h3 {
        text-align: center;
    }
</style>
>>>>>>> 9bc3328f560df4f1ec860ae6e84f4bbe500c9821
