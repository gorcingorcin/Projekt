package com.gorcin;

import java.sql.*;




public class Kon {

private Connection con;

	public Connection getKonekcija (){
try 
{ 
	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/supermarket?","root","administrator");
	
	
}catch (SQLException e) 
{
	e.printStackTrace();
   
}
return con;					
};
		
	}

