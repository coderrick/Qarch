<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
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