<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.timetable.dao.subjectDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TimeTable : TimeTable Generator</title>
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
			text-align : center;
		}
		.row{
			margin-left : 10px;
			margin-right : 10px;
		}
		#timetable{
			margin-right: 3%;
			margin-left: 3%;
			padding-left: 30px;
			padding-right: 30px;
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

select , input{
  width: 100%;
  min-width: 15ch;
  max-width: 18ch;
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
input{
	width : 100%;
	text-align : center;
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
	width : 40px;
}
p{
	font-size : 1.2rem;
}
 .head{
margin-bottom : -20px;
} 
.btn-lg{
	margin : 5px;
}

	</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<% String cs = (String)session.getAttribute("course"); %>
	<h1>Time Table : <%= cs %></h1>
	<div id="timetable">
		<form class="dropdown-group" action="saveTable" method = "post">
		<div class = "row head">
			<div class="weekday" style="" >
			<p>Day</p>
			</div>
			<div class="subgroup" style="text-align : center">
					<input name = "t1" type="text" required placeholder="Period Time.." class="" value = "09:00 to 09:50"/>
				</div>
			<div class="subgroup" style="text-align : center">
					<input name = "t2" type="text" required placeholder="Period Time.." class="" value="09:50 to 10:40"/>
				</div><div class="subgroup" style="text-align : center">
					<input name = "t3" type="text" required placeholder="Period Time.." class="" value="10:40 to 11:30"/>
				</div><div class="subgroup" style="text-align : center">
					<input name = "t4" type="text" required placeholder="Period Time.." class="" value="11:30 to 12:20"/>
				</div><div class="subgroup" style="text-align : center">
					<input name = "t5" type="text" required placeholder="Period Time.." class="" value="12:20 to 01:10"/>
				</div><div class="subgroup" style="text-align : center">
					<input name = "t6" type="text" required placeholder="Period Time.." class="" value="01:10 to 02:00"/>
				</div><div class="subgroup" style="text-align : center">
					<input name = "t7" type="text" required placeholder="Period Time.." class="" value="02:00 to 03:40"/>
				</div>
		</div>
		<div class = "row">
			<div class="weekday">
			<h3>Mon</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s1"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt1"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s2"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt2"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s3"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt3"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s4"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt4"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s5"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt5"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s6"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt6"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s7"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt7"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			
		</div>
		
		<div class = "row">
			<div class="weekday">
			<h3>Tue</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s8"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt8"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s9"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt9"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s10"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt10"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s11"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt11"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s12"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt12"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s13"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt13"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s14"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt14"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			
		</div>
		
		<div class = "row">
			<div class="weekday">
			<h3>Wed</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s15"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt15"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s16"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt16"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s17"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt17"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s18"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt18"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s19"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt19"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s20"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt20"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s21"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt21"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			
		</div>
		
		<div class = "row">
			<div class="weekday">
			<h3>Thr</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s22"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt22"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s23"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt23"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s24"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt24"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s25"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt25"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s26"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt26"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s27"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt27"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s28"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt28"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			
		</div>
		
		<div class = "row">
			<div class="weekday">
			<h3>Fri</h3>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s29"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt29"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s30"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt30"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s31"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt31"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s32"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt32"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s33"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt33"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s34"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt34"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			<div class = "subgroup">
				<div class = "subject">
				<select class="subject" name = "s35"><option>Subject..</option><%
					for(String s : subjectDao.getSubjects(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
				<div class = "teacher">
				<select class="teacher" name = "tt35"><option>Teacher..</option><%
					for(String s : subjectDao.getTeachers(cs)){%><option><%= s %></option><% } %>
				</select>
				</div>
			</div>
			
		</div>
	
	<div>
	<% 
	if(session.getAttribute("message")!=null)
		  			{
					
		  				out.print("<p class='text-danger ml-1' style='text-align : center; color : green;'>"+session.getAttribute("message")+"</p>");
		  				session.removeAttribute("message");
		  				
		  			}
	%>
	</div>
	<div class="container">
	<button id = "submit-btn" type="submit" class="btn btn-info btn-lg " >Submit</button>
		</div>
	</form>
	<form action = "downloadPDF" method = "post">
	<div class="container">
			<input type="hidden" name="course" value = <%= cs %> />
	 	 <button type="submit" class="btn btn-info btn-lg" >Download</button>
	 	 </div>
	</form>
		
		
	</div>
	
	<div class="container">
		 <a href="home.jsp">Home Page</a>
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