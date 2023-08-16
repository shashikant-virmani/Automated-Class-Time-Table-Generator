package com.timetable.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/FetchDetails")
public class FetchDetails extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
		String course = request.getParameter("course");
		String branch = request.getParameter("branch");
		String semester = request.getParameter("semester");
		
		String path = branch + "_" + semester;
		System.out.println("Looking for " + path);
		HttpSession session=request.getSession();
		if(course.equals("MCA") && branch.equals("MCA")) {
			session.setAttribute("course", path);
			response.sendRedirect("Time-Table.jsp");
			
		}
		else {
			
			session.setAttribute("message","Sorry, this functionality is available for MCA only");
			  
				response.sendRedirect("home.jsp");
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
