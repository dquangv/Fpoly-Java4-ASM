package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class testPostgreSQL {

	private static String url = "jdbc:postgresql://localhost:5432/java4_asm";
	private static String username = "postgres";
	private static String password = "123";

	Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(url,username,password);
			System.out.println("Successful");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void main(String[] args) {
		testPostgreSQL test = new testPostgreSQL();
		test.getConnection();
	}
}
