<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teachers : Timetable Generator</title>
<!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="bootstrap.css" rel="stylesheet"/>
    <!-- FONT AWESOME CSS -->
    <link href="font-awesome.min.css" rel="stylesheet"/>
    <!-- FLEXSLIDER CSS -->
    <link href="flexslider.css" rel="stylesheet"/>
    <!-- CUSTOM STYLE CSS -->
    <link href="style.css" rel="stylesheet"/>
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'/>

	<style>
		.nav-wrapper{
			display : flex;
			align-items : center;
		}
		.brand img{
			width : 50px;
			margin : 6px 6px;
		}
		.navbar li {
			float : left;
			list-style : none;
			margin : 13px 20px;
		}
		.navbar li a{
			font-size : 120%;
			padding : 3px 3px;
			color : white;
		}
		.log{
			float : right;
			
			color : black;
			
			
		}
		.log input {
			font-family: 'Open Sans', sans-serif;
    		line-height: 30px;
    		font-size: 14px;
			margin : 3px 2px;
			margin-left : 100px;
			padding : 3px 3px;
			font-size : 130%;
			width : 100px;
			height : 40px;
			
		}
		.header{
		margin-top : 60px;
		background : black;
		}
	</style>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache"); //HTTP 1.0
		response.setHeader("Expires","0");	//Proxies
		
		if(session.getAttribute("username") == null){
			response.sendRedirect("index.jsp");
		}
	%>
	
	<div class="navbar navbar-inverse navbar-fixed-top " id="menu">
	<%@ include file="navbar.jsp" %>
	
	</div>
	<main>
	 <section class="header container">
		<div>
			<h2>Welcome admin</h2>
		</div>
	
	</section>
	</main>

</body>
</html>