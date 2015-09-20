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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script> 
	<script src="javascript/three.min.js"></script>
	<script src="javascript/GSVPano.js"></script>
	<script src="javascript/Hyperlapse.js"></script>
	<script src="javascript/primary.js"></script>
</head> 
<body > 
    <div id="directions-panel"></div>
	<div id="box" style="display:inline-flex;">
		<div id="pano" style="margin-left:12px;"></div>
		<div id="map" style="width: 400px; height: 400px; float: left; padding: 0;"></div>
	</div>	
	<button id="play" >Start</button>
	<button id="stop" >Stop</button>
	<button id="next" >Next</button>
	<button id="prev" >Prev</button>
	<button id="load" >Load</button>

</div><!-- End of the second page -->
</body> 
</html>