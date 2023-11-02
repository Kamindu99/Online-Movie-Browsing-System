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

import com.movie.Movie;
import com.movie.MovieDBUtil;

@WebServlet("/MovieUpdateServlet")
public class MovieUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String mid = request.getParameter("mid");
		String mname = request.getParameter("mname");
		String mlang = request.getParameter("mlang");
		String murl = request.getParameter("murl");
		String mprice = request.getParameter("mprice");
		
		boolean isTrue;
		
		isTrue = MovieDBUtil.updateMovie(mid, mname, mlang, murl, mprice);
		
		if(isTrue == true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Movie Update Successfull');");
			out.println("location='MovieAdminList.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Movie Update failed');");
			out.println("location='MovieAdminList.jsp'");
			out.println("</script>");
		}
	}

}
