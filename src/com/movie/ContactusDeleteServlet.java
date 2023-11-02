package com.movie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ContactusDeleteServlet")
public class ContactusDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
        String id = request.getParameter("id");
        boolean isTrue;

        isTrue = ContactusDBUtil.deleteContactus(id);

        if (isTrue) {
        	out.println("<script type='text/javascript'>");
			out.println("alert(' Deleted Successfull');");
			out.println("location='ContactusList.jsp'");
			out.println("</script>");
        } else {
        	out.println("<script type='text/javascript'>");
			out.println("alert(' Deleted Failed');");
			out.println("location='ContactusList.jsp'");
			out.println("</script>");
        }
    }


}
