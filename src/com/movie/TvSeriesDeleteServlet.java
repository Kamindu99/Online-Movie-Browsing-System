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

import com.movie.TvSeries;
import com.movie.TvSeriesDBUtil;


@WebServlet("/TvSeriesDeleteServlet")
public class TvSeriesDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
        String id = request.getParameter("tid");
        boolean isTrue;

        isTrue = TvSeriesDBUtil.deleteTvSeries(id);

        if (isTrue) {
        	out.println("<script type='text/javascript'>");
			out.println("alert('TvSeries Deleted Successfull');");
			out.println("location='TVSeriesAdminList.jsp'");
			out.println("</script>");
        } else {
        	out.println("<script type='text/javascript'>");
			out.println("alert('TvSeries Deleted Failed');");
			out.println("location='TVSeriesAdminList.jsp'");
			out.println("</script>");
        }
    }


}
