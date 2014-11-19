<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		
    <!-- ----- CSS ----- -->
		<!-- ----- common ----- -->
		<link type="text/css" rel="stylesheet" href="../../bundle/css/common.css" />
		<!-- ----- write ----- -->
		<link type="text/css" rel="stylesheet" href="../../bundle/css/board/private.css" />

	<!-- ----- Javascript ----- -->
		<!-- ----- JQuery ----- -->
		<script type="text/javascript" src="../../bundle/js/jquery-1.11.1.js"></script>
		<!-- ----- header ----- -->
		<script type="text/javascript" src="../../bundle/js/board/private.js"></script>
		
		<title>SSODAL</title>
	</head>
	<body onunload="opener.location.href='javascript:handler()'">
		<div id="wrapper">
		    <article id="article">
		    	<section id="section_private">
		    		<div id="private_wrapper">
		    			<h3>Input password</h3>
		    			<input type="password" name="board_password" id="board_password" placeholder="Password" />
		    			<input type="button" name="private_send" id="private_send" value="Send" onclick="handlerPrivate();" />
		    		</div>
		    	</section>
		    </article>
		</div>
	</body>
</html>