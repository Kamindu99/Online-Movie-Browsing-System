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


@WebServlet("/movieDeleteServlet")
public class movieDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
        String id = request.getParameter("mid");
        boolean isTrue;

        isTrue = MovieDBUtil.deleteMovie(id);

        if (isTrue) {
        	out.println("<script type='text/javascript'>");
			out.println("alert('Movie Deleted Successfull');");
			out.println("location='MovieAdminList.jsp'");
			out.println("</script>");
        } else {
        	out.println("<script type='text/javascript'>");
			out.println("alert('Movie Deleted Failed');");
			out.println("location='MovieAdminList.jsp'");
			out.println("</script>");
        }
    }


}
