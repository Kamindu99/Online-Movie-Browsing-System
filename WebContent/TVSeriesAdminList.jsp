<%@page import="java.util.List"%>
<%@page import="com.movie.TvSeriesDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.movie.TvSeries" %>
<% List<TvSeries> tvserieses = TvSeriesDBUtil.getAllTvSeries(); %>
<%@ page import="java.text.NumberFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TV Series List Admin</title>
  <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
</head>
<body>
<jsp:include page="header.jsp" />

<div class="container mt-3 mb-5">

<h1 style="text-align:center">TV Series Management</h1>

 <a href="TVSeriesAdd.jsp" class='btn btn-info mb-4' style='text-decoration: none; color :white; float:right'>Add New</a> 
 
<table class="table mt-5" style="border: 1px solid black;">
  <thead class="thead-dark">
    <tr>
      <th scope="col">TV Series Id</th>
      <th scope="col">TV Series Name</th>
      <th scope="col">Language</th>
      <th scope="col">Episode</th>
      <th scope="col">URL</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <% NumberFormat currencyFormat = NumberFormat.getCurrencyInstance();
       currencyFormat.setMaximumFractionDigits(2);
    %>
        <% for (TvSeries tvseries : tvserieses) { %>
            <tr>
                <th scope="row"><%= tvseries.getTid() %></th>
                <td><%= tvseries.getTname() %></td>
                <td><%= tvseries.getTlang() %></td>
                <td><%= tvseries.getEpi() %></td>
                <td style="max-width: 300px; overflow: hidden; text-overflow: ellipsis;"><%= tvseries.getTurl() %></td>
                <td> <%= currencyFormat.format(Double.parseDouble(tvseries.getTprice())) %> </td>
                <td>
                 <a href="TvSeriesEdit.jsp?tid=<%= tvseries.getTid() %>" class='btn btn-warning mr-3' style='text-decoration: none; color :black'>Edit</a>
                 <a href="TvSeriesDeleteServlet?tid=<%= tvseries.getTid() %>" class='btn btn-danger' style='text-decoration: none; color :black'>Delete</a>
                </td>
            </tr>
        <% } %>
        </tbody>
</table>

</div>

<jsp:include page="footer.jsp" />
</body>
</html>