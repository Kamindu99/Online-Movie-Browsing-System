<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">

    <title>Admin LogIn</title>
    <link rel="icon" href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
    <link rel="stylesheet" type="text/css" href="Movie.css">
  </head>

  <body>


    <jsp:include page="header.jsp" />

    <br>

    <div class="main-form">
     
        <form id="loginto" action="adminlogin" method="post" ">
          <h1 style='text-align:center'>Admin Login</h1><br>
          <label><b> User Name </b></label> <br>
          <input type="text" id="Uname" name="uid" placeholder="Enter the User Name"><br><br>

          <label> <b> Password </b> </label> <br>
          <input type="password" name="pass" id="Pass" placeholder="Enter the Password"><br><br>

          <input type="submit" name="submit" id="Log" class='btn btn-success w-100' value="LogIn">

          <br><br>
          <input type="checkbox" id="check">
          <span>Remember me</span>
          <br><br>
          <div id="fogot">
            <a href="#"> Forgot Password </a>
          </div>

          <div id="already" style='text-align:center'>
            Register <button type="login" class="logbtn"><a href="userregister.jsp"> Register</a> </button>
          </div>

        </form>
    </div>

    <br>
    <jsp:include page="footer.jsp" />
  </body>

  </html>