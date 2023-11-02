package com.movie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactusAddServlet")
public class ContactusAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = ContactusDBUtil.insertContactus( name,email,message);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Inquiry Added Successfull');");
			out.println("location='ContactusList.jsp'");
			out.println("</script>");
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Innquiy Add failed');");
			out.println("location='ContactusAdd.jsp'");
			out.println("</script>");
		}
		
	}



}
