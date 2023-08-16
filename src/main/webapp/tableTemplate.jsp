<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Time Table</title>
<style>
* {
  margin: 0;
  padding: 0;
  font-family: "Open Sans", sans-serif;
}
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
		.container{
			padding-bottom : 0px;
			margin-bottom : 0px;
		}
		.row{
			margin-left : 10px;
			margin-right : 10px;
		}
		#timetable{
		}
		
h1{
  margin-top: 4rem;
  text-align: center;
}
h3{
	padding-top : 10px;
	text-align : center;
	
}

body {
  background-color: #fafafa;
}
.dropdown-group {
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin: auto;
  margin-top: 3rem;
}

select {
  width: 100%;
  min-width: 15ch;
  max-width: 30ch;
  border: 1px solid var(--select-border);
  border-radius: 0.25em;
  padding: 0.25em 0.5em;
  font-size: 1.25rem;
  cursor: pointer;
  line-height: 1.1;
  background-color: #fff;
  background-image: linear-gradient(to top, #f9f9f9, #fff 33%);
  box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.2);
}
.subgroup{
	margin-left : auto;
	margin-right : auto;
}
.subject{
	margin-bottom : 2px;
}
.weekday{
	margin-right : auto;
	text-align : center;
	width : 60px;
}
p{
	font-size : 1.2rem;
}
 .head{
margin-bottom : -20px;
} 

	</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<h1>Time Table : MCA 5th Semester</h1>
	<div class = "container" id="timetable">
		<form class="dropdown-group">
		<div class = "row head">
			<div class="weekday">
			<p>Day</p>
			</div>
			<div class="subgroup">
			<p>09:00 to 09:50</p>
			</div>
			<div class="subgroup">
			<p>09:50 to 10:40</p>
			</div>
			<div class="subgroup">
			<p>10:40 to 11:30</p>
			</div>
			<div class="subgroup">
			<p>11:30 to 12:20</p>
			</div>
			<div class="subgroup">
			<p>12:20 to 01:10</p>
			</div>
			<div class="subgroup">
			<p>01:10 to 02:00</p>
			</div>
			<div class="subgroup">
			<p>02:00 to 03:40</p>
			</div>
		</div>
		<div class = "row">
			<div class="weekday">
			<h3>Mon</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject test"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject test"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
		</div>
		
		<div class = "row">
			<div class="weekday">
			<h3>Tue</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
		</div>
		
		<div class = "row">
		<div class="weekday">
			<h3>Wed</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
		</div>
		<div class = "row">
		<div class="weekday">
			<h3>Thr</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
		</div>
		<div class = "row">
		<div class="weekday">
			<h3>Fri</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject"><option>Subject..</option></select>
				</div>
				<div class = "teacher">
				<select class="teacher"><option>Teacher..</option></select>
				</div>
			</div>
		</div>
		
		</form>
	</div>
	

	<!-- jquery  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


   <!-- <!--  bootstrap
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script> --> 
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>


   
</body>
</html>