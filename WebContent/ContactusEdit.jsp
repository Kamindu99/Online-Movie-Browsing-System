<%@page import="com.movie.ContactusDBUtil"%>
<%@page import="com.movie.Contactus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us Edit</title>
     <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
         <link rel="stylesheet" type="text/css" href="Movie.css">
</head>
<body>
<jsp:include page="header.jsp" />

 <div style="background:gray">
    <br><br>
    <div class="main-form" >
 
      <form action="contactusupdate" method="post" >
      
         <%
            String id = request.getParameter("id");
            
         Contactus contactus = ContactusDBUtil.getContactusByName(id);

            if (contactus != null) {
        %>
            
        <h1><b>Contact us Edit</b></h1>
        <h4>Update Contact us</h4><br>
     <input  required type="text" id="cid" name="cid" placeholder="Enter the id" value="<%= contactus.getCid() %>" hidden>

        <label><b> name</b></label> <br>
        <input  required type="text" id="name" name="name" placeholder="Enter the name" value="<%= contactus.getName() %>"><br><br>

        
        <label><b> Email</b></label> <br>
        <input type="text" required id="email" name="email" placeholder="Enter the email" value="<%=contactus.getEmail() %>"><br><br>

        <label><b> Message</b></label> <br>
        <input type="text" required id="message" name="message" placeholder="Enter the message" value="<%= contactus.getMessage() %>"><br><br>

      
        <div class="submitbtn">

           <div class='row'>
        <div class='col-sm-6'>
         <input onclick={window.location.replace('ContactusList.jsp')} type="button" class='btn btn-warning w-100' name="submit" id="Log" value="Cancel">
        </div>
         <div class='col-sm-6'>
          <input type="submit" class='btn btn-success w-100' name="submit" id="Log" value="Update">
        </div>
        </div>
        </div>
        <%
            } else {
        %>
                <p>not found. </p>
        <%
            }
        %>
      </form>
    </div>
    <br><br>
    </div>
    
<jsp:include page="footer.jsp" />
</body>
</html>