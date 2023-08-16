<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.timetable.dao.CourseDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home : Timetable Generator</title>

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
		.nav-wrapper, .fg{
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
		margin-top : 70px;
		
		}
		.ff{
			width : 200px;
			float : left;
			margin : 10px 20px;
			padding : 3px 6px;
		}
		.hbtn{
			margin-left : 20px;
			width : 100px;
			height : 42px;
			color : white;
			background-color : black;
			
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
	 <section class="container header">
		<div>
			<h2>Welcome! Admin </h2>
		</div>
		<form action="FetchDetails" method="post">
		<div class = "fg">
		<div class="form-group">
			<select id = "course" size = "1" name = "course" class = "form-control ff">
				<option selected = "selected">Select Degree</option>
				
				
			</select>
		</div>
		<div class="form-group">
			<select id = "branch" size = "1" name = "branch" class = "form-control ff">
				<option selected = "selected">Select Branch</option>
				<option class= "MCA">MCA</option>
				<option class = "BTech">CSE</option>
				<option class = "BTech">ECE</option>
			</select>
		</div>
		<div class="form-group">
			<select id = "semester" size = "1" name="semester" class = "form-control ff">
				<option selected="selected">Select Semester</option>
				<option>V</option>
			</select>
		</div>
		<div class="form-group">
			<button id = "submit-btn" type="submit" class="btn btn-info btn-lg hbtn">Submit</button>
		</div>
		</div>
		</form>
	</section>
	<% 
	if(session.getAttribute("message")!=null)
		  			{
					
		  				out.print("<p class='text-danger ml-1' style='text-align : center'>"+session.getAttribute("message")+"</p>");
		  				session.removeAttribute("message");
		  				
		  			}
	%>
	</main>
<%@include file="scripts.jsp" %>	
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--  Core Bootstrap Script -->
<script src="bootstrap.js"></script>
<!--  Flexslider Scripts -->
<script src="jquery.flexslider.js"></script>
<!--  Scrolling Reveal Script -->
<script src="scrollReveal.js"></script>
<!--  Scroll Scripts -->
<script src="jquery.easing.min.js"></script>
<!--  Custom Scripts -->
<script src="custom.js"></script>

<!-- <script>
$('.BTech').hide();
$('.MCA').hide();
$('#course').change(function(){
	$('.BTech').hide();
	$('.MCA').hide();
	var a = $(this).val();
	a = '.' + a;
	
	$(a).show();
})
</script> -->
</html>