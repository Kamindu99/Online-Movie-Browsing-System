package com.movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.AdminLogin;
import com.movie.adminLoginDBUtil;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = adminLoginDBUtil.validate(userName, password);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Login Successfull');");
			out.println("location='AdminDashboard.jsp'");
			out.println("</script>");
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='AdminLogin.jsp'");
			out.println("</script>");
		}
		
	}

}
