package com.gorcin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.rmi.server.Dispatcher;

//Servlet koji prima input i šalje Servletu Kvadrat na obradu

public class Login extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		HttpSession sesija = request.getSession();
		String user = request.getParameter("uname");
		String pass = request.getParameter("pass");
//		System.out.println(user);
//		System.out.println(pass);
		
	
		sesija.setAttribute("password",pass);
		sesija.setAttribute("username",user);
		
response.sendRedirect("sq");
		
	}
	
}
