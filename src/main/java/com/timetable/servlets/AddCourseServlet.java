package com.timetable.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entities.Course;
import com.timetable.dao.CourseDao;

@WebServlet("/addCourse")
public class AddCourseServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
				String dept = request.getParameter("department");
				String cname = request.getParameter("course");
				String branch = request.getParameter("branch");
				String semCount = request.getParameter("semCount");
				int count = Integer.parseInt(semCount);
				Course cs = new Course(dept, cname, branch, count);
				boolean status = CourseDao.insertCoursetoDb(cs);
				PrintWriter out = response.getWriter();
				if(status) {
					out.println("<h1 style='text-align:center;'>Course is added successfully</h1>");
					out.println("<h1 style='text-align:center;'><a href='home.jsp'>Go to Home Page</a></h1>");

				}
				else {
					out.println("<h1 style='text-align:center;'>Some Error occured</h1>");
					out.println("<h1 style='text-align:center;'><a href='home.jsp'>Go to Home Page</a></h1>");

				}
			}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
