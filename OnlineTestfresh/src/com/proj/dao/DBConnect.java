package com.proj.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect 
{
	public static Connection getDBConnection()
	{
		Connection mysqlcon=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(ClassNotFoundException e) {e.printStackTrace();}
		try
		{
			mysqlcon=DriverManager.getConnection("jdbc:mysql://localhost/jee", "root", "sourav123");
		}catch(SQLException e) {e.printStackTrace();}
		return mysqlcon;
	}
}
