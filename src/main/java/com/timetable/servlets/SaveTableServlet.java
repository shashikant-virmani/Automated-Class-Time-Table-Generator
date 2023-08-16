package com.timetable.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.generatePDF.CP;
@WebServlet("/saveTable")
public class SaveTableServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
		String course = (String)session.getAttribute("course");
		
		Connection con = CP.creatC();
		String q = "delete from " + course;
		Statement st = con.createStatement();
		st.executeUpdate(q);
		String query = "insert into " + course + " values (?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("t1"));
		pstmt.setString(2, request.getParameter("t2"));
		pstmt.setString(3, request.getParameter("t3"));
		pstmt.setString(4, request.getParameter("t4"));
		pstmt.setString(5, request.getParameter("t5"));
		pstmt.setString(6, request.getParameter("t6"));
		pstmt.setString(7, request.getParameter("t7"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("s1"));
		pstmt.setString(2, request.getParameter("s2"));
		pstmt.setString(3, request.getParameter("s3"));
		pstmt.setString(4, request.getParameter("s4"));
		pstmt.setString(5, request.getParameter("s5"));
		pstmt.setString(6, request.getParameter("s6"));
		pstmt.setString(7, request.getParameter("s7"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("tt1"));
		pstmt.setString(2, request.getParameter("tt2"));
		pstmt.setString(3, request.getParameter("tt3"));
		pstmt.setString(4, request.getParameter("tt4"));
		pstmt.setString(5, request.getParameter("tt5"));
		pstmt.setString(6, request.getParameter("tt6"));
		pstmt.setString(7, request.getParameter("tt7"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("s8"));
		pstmt.setString(2, request.getParameter("s9"));
		pstmt.setString(3, request.getParameter("s10"));
		pstmt.setString(4, request.getParameter("s11"));
		pstmt.setString(5, request.getParameter("s12"));
		pstmt.setString(6, request.getParameter("s13"));
		pstmt.setString(7, request.getParameter("s14"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("tt8"));
		pstmt.setString(2, request.getParameter("tt9"));
		pstmt.setString(3, request.getParameter("tt10"));
		pstmt.setString(4, request.getParameter("tt11"));
		pstmt.setString(5, request.getParameter("tt12"));
		pstmt.setString(6, request.getParameter("tt13"));
		pstmt.setString(7, request.getParameter("tt14"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("s15"));
		pstmt.setString(2, request.getParameter("s16"));
		pstmt.setString(3, request.getParameter("s17"));
		pstmt.setString(4, request.getParameter("s18"));
		pstmt.setString(5, request.getParameter("s19"));
		pstmt.setString(6, request.getParameter("s20"));
		pstmt.setString(7, request.getParameter("s21"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("tt15"));
		pstmt.setString(2, request.getParameter("tt16"));
		pstmt.setString(3, request.getParameter("tt17"));
		pstmt.setString(4, request.getParameter("tt18"));
		pstmt.setString(5, request.getParameter("tt19"));
		pstmt.setString(6, request.getParameter("tt20"));
		pstmt.setString(7, request.getParameter("tt21"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("s22"));
		pstmt.setString(2, request.getParameter("s23"));
		pstmt.setString(3, request.getParameter("s24"));
		pstmt.setString(4, request.getParameter("s25"));
		pstmt.setString(5, request.getParameter("s26"));
		pstmt.setString(6, request.getParameter("s27"));
		pstmt.setString(7, request.getParameter("s28"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("tt22"));
		pstmt.setString(2, request.getParameter("tt23"));
		pstmt.setString(3, request.getParameter("tt24"));
		pstmt.setString(4, request.getParameter("tt25"));
		pstmt.setString(5, request.getParameter("tt26"));
		pstmt.setString(6, request.getParameter("tt27"));
		pstmt.setString(7, request.getParameter("tt28"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("s29"));
		pstmt.setString(2, request.getParameter("s30"));
		pstmt.setString(3, request.getParameter("s31"));
		pstmt.setString(4, request.getParameter("s32"));
		pstmt.setString(5, request.getParameter("s33"));
		pstmt.setString(6, request.getParameter("s34"));
		pstmt.setString(7, request.getParameter("s35"));
		pstmt.executeUpdate();
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, request.getParameter("tt29"));
		pstmt.setString(2, request.getParameter("tt30"));
		pstmt.setString(3, request.getParameter("tt31"));
		pstmt.setString(4, request.getParameter("tt32"));
		pstmt.setString(5, request.getParameter("tt33"));
		pstmt.setString(6, request.getParameter("tt34"));
		pstmt.setString(7, request.getParameter("tt35"));
		pstmt.executeUpdate();
		session.setAttribute("message", "Timetable saved successfully.");
		response.sendRedirect("Time-Table.jsp");
		
		/*
		 * PrintWriter out = response.getWriter(); out.
		 * println("<h1 style='text-align:center;'>Time Table is saved successfully</h1>"
		 * ); out.
		 * println("<h1 style='text-align:center;'><a href='home.jsp'>Go to Home Page</a></h1>"
		 * );
		 */
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
