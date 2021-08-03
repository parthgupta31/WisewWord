package com.dao;

import java.sql.*;


public class DbConnection {
	private static Connection conn=null;
	private DbConnection()
	{
		
	}
		public static Connection getConnection()
		{
			try
			{
				if(conn==null)
				{
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wisewords","root","");
					}
					catch(Exception e)
					{
						System.out.println(e);
					}
				}
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return conn;
		}
}
