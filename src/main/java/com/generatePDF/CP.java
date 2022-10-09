package com.generatePDF;


import java.sql.*;

public class CP {
	
	static Connection con;

	public static Connection creatC() {
		try {
			// load the driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// create the connection..
			String user = "root";
			String password = "MyNewPass";
			String url = "jdbc:mysql://localhost:3306/timetabledb";

			con = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
}
