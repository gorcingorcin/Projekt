package com.gorcin;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.sql.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Kvadrat extends HttpServlet implements Serializable{
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException{
		HttpSession sesija= request.getSession();
		 
		String uname= (String)sesija.getAttribute("username");
		String pass= (String)sesija.getAttribute("password");
		
		//System.out.println(uname);
		
		PrintWriter out=response.getWriter();
		out.print(uname);
		
		Kon k= new Kon();
		Connection con=k.getKonekcija();
		//System.out.println(uname);
	
		
		System.out.println(uname);
		try {
			PreparedStatement pst;
			pst = con.prepareStatement("insert into  cashier(username,password) values(?,?)");
			pst.setString(1,uname);
			pst.setString(2,pass);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}

