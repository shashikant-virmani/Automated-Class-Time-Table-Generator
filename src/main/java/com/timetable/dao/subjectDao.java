package com.timetable.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.generatePDF.CP;

public class subjectDao {
	public static ArrayList<String> getSubjects(String course) {
		
		ArrayList<String> list = new ArrayList<>();
		try {
			//String course = "MCA_Semester_5";
			Connection con = CP.creatC();
			String q = "Select * from subject where cname = ?";
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, course);
			ResultSet set = pstmt.executeQuery();
			while(set.next()) {
				list.add(set.getString("sname"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
public static ArrayList<String> getTeachers(String course) {
		
		ArrayList<String> list = new ArrayList<>();
		try {
			//String course = "MCA_Semester_5";
			Connection con = CP.creatC();
			String q = "Select * from subject where cname = ?";
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, course);
			ResultSet set = pstmt.executeQuery();
			while(set.next()) {
				list.add(set.getString("teacher"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
