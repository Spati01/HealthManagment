package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect{

	private static Connection con;
	private static String username = "root";
	private static String password = "Sdippati@01";
	
	public static Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmanagment",username,password);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	
}
