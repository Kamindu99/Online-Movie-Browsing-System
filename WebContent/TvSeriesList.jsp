<%@page import="java.util.List"%>
<%@page import="com.movie.TvSeriesDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.movie.TvSeries" %>
<% List<TvSeries> tvserieses = TvSeriesDBUtil.getAllTvSeries(); %>

  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>Tv Series List</title>
         <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
    <style>
      /* movie constent */
      .col-sm-3 .card:hover {
        scale: 1.04;
        cursor: pointer
      }
    </style>
  </head>

  <body style="background-color: #9d9e9d">
    <jsp:include page="header.jsp" />

    <div class="container mt-4">

      <div class="row mb-4">
        <% for (TvSeries tvseriese : tvserieses) { %>
        <div class="col-sm-3 mb-4">
          <div class="card" style="box-shadow: 0 0 10px 0 rgba(0,0,0,0.5);">
            <img class="card-img-top"
              src=<%= tvseriese.getTurl() %>
              alt="Card image cap" style="object-fit: cover;height: 200px;">
            <div class="card-body">
              <h5 class="card-title"><%= tvseriese.getTid() %> - <%= tvseriese.getTname() %></h5>
              <p class="card-text">
              <ul style="font-size: 16px;">
                <li>Language: <%= tvseriese.getTlang() %></li>
                <li>Epi: <%= tvseriese.getEpi() %></li>
                <li>Price: <%= tvseriese.getTprice() %></li>
              </ul>
              </p>
              <p style='font-size:12px'>You can download after payment</p>
              <a href="#" class="btn btn-primary w-100">Buy Now</a>
            </div>
          </div>
        </div>
        <% } %>
      </div>

    </div>
    <jsp:include page="footer.jsp" />
  </body>

  </html>