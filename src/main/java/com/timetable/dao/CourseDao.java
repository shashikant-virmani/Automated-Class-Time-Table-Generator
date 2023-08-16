package com.timetable.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.entities.Course;
import com.entities.Department;
import com.generatePDF.CP;

public class CourseDao {
	
	public static ArrayList<String> getAllDegrees(){
		Connection con = CP.creatC();
		ArrayList<String> list = new ArrayList<>();
		try {
			String q = "Select DISTINCT cname from courses";
			Statement st = con.createStatement();
			ResultSet set = st.executeQuery(q);
			while(set.next()) {
				list.add(set.getString("cname"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static ArrayList<String> getAllBranches(String cname){
		Connection con = CP.creatC();
		ArrayList<String> list = new ArrayList<>();
		try {
			String q = "Select branch from courses where cname = ?";
			PreparedStatement pstmt = con.prepareStatement(q);
			ResultSet set = pstmt.executeQuery(q);
			while(set.next()) {
				list.add(set.getString("cname"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static ArrayList<Department> getAllDepartments(){
		Connection con = CP.creatC();
		ArrayList<Department> list = new ArrayList<>();
		try {
			String q = "Select * from departments";
			Statement st = con.createStatement();
			ResultSet set = st.executeQuery(q);
			while(set.next()) {
				int deptId = set.getInt("deptId");
				String deptName = set.getString("deptName");
				String description = set.getString("description");
				Department d = new Department(deptId, deptName, description);
				list.add(d);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static boolean insertCoursetoDb(Course cs) {
		boolean status = false;
		try {
			Connection con = CP.creatC();
			String q = "insert into courses values (?, ?, ?, ?, ?)";
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setInt(1, cs.getId());
			pstmt.setString(2, cs.getDepartment());
			pstmt.setString(3, cs.getCname());
			pstmt.setString(4, cs.getBranch());
			pstmt.setInt(5, cs.getSemCount());
			
			pstmt.executeUpdate();
			status = true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
}
