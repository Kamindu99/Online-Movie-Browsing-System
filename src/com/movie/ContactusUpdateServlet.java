package com.movie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
 
@WebServlet("/ContactusUpdateServlet")
public class ContactusUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			String id = request.getParameter("cid");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String message = request.getParameter("message");
		
			
			boolean isTrue;
			
			isTrue = ContactusDBUtil.updateContactus(id,name,email, message);
			
			if(isTrue == true) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Update Successfull');");
				out.println("location='ContactusList.jsp'");
				out.println("</script>");
			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert(' Update failed');");
				out.println("location='ContactusList.jsp'");
				out.println("</script>");
			}
		}

	}

