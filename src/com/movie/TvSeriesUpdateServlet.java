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

@WebServlet("/TvSeriesUpdateServlet")
public class TvSeriesUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String tid = request.getParameter("tid");
		String tname = request.getParameter("tname");
		String tlang = request.getParameter("tlang");
		String epi = request.getParameter("epi");
		String turl = request.getParameter("turl");
		String tprice = request.getParameter("tprice");
		
		boolean isTrue;
		
		isTrue = TvSeriesDBUtil.updateTvSeries(tid, tname, tlang,epi, turl, tprice);
		
		if(isTrue == true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Tv Series Update Successfull');");
			out.println("location='TVSeriesAdminList.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Tv Series Update failed');");
			out.println("location='TVSeriesAdminList.jsp'");
			out.println("</script>");
		}
	}

}
