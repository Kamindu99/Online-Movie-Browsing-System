<%@page import="java.util.List"%>
<%@page import="com.movie.ContactusDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.movie.Contactus" %>
<% List<Contactus> contactus = ContactusDBUtil.getAllContactus(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us List</title>
  <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
</head>
<body>
<jsp:include page="header.jsp" />

<div class="container mt-3 mb-5">

<h1 style="text-align:center">Contact Us</h1>

 <a href="ContactusAdd.jsp" class='btn btn-info mb-4' style='text-decoration: none; color :white; float:right'>Add New</a> 
 
<table class="table mt-5" style="border: 1px solid black;">
  <thead class="thead-dark">
    <tr>
      <th scope="col"> Id</th>
      <th scope="col"> Name</th>
      <th scope="col">Email</th>
      <th scope="col">Message</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
        <% for (Contactus contact : contactus) { %>
            <tr>
                <th scope="row"><%= contact.getCid() %></th>
                <td><%= contact.getName() %></td>
                <td><%= contact.getEmail() %></td>
                <td><%= contact.getMessage() %></td>
                <td>
                 <a href="ContactusEdit.jsp?id=<%= contact.getCid() %>" class='btn btn-warning mr-3' style='text-decoration: none; color :black'>Edit</a>
                 <a href="ContactusDeleteServlet?id=<%= contact.getCid() %>" class='btn btn-danger' style='text-decoration: none; color :black'>Delete</a>
                </td>
            </tr>
        <% } %>
        </tbody>
</table>

</div>

<jsp:include page="footer.jsp" />
</body>
</html>