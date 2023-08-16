package com.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.generatePDF.CP;

public class loginDao {
	public static boolean validateLogin(String username, String password) {
		try {
			Connection con = CP.creatC();
			String query = "Select * from admin where name = ? and password = ?";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, username);
			st.setString(2, password);
			
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return false;
	}
}
