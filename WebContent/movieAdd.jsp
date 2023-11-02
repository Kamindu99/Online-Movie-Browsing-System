<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en" xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <meta charset="ISO-8859-1">
    <title>Movie_Upload</title>
     <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
    <link rel="stylesheet" type="text/css" href="Movie.css">
  </head>

  <body>
  <jsp:include page="header.jsp" />
    <div style="background-color: gray">
    <br><br>
    <div class="main-form" >
 
      <form id="loginto" action="movieadd" method="post">

        <h1><b>Movie Upload</b></h1>
        <h4>Fill into upload</h4><br>


        <label><b> MovieID</b></label> <br>
        <input type="text" id="mid" name="mid" placeholder="Enter the movieID"><br><br>

        <label><b> MovieName</b></label> <br>
        <input type="text" id="mname" name="mname" placeholder="Enter the movieName" required><br><br>

        <label><b> Language</b></label> <br>
        <input type="text" id="mlang" name="mlang" placeholder="Enter the movie language" required><br><br>

        <label><b> MovieURL</b></label> <br>
        <input type="text" id="mUrl" name="murl" placeholder="Enter the movieUrl" required><br><br>

        <label><b> Price</b></label> <br>
        <input type="text" id="mprice" name="mprice" placeholder="Enter the moviePrice" required><br><br>

        <div class="submitbtn">
        <div class='row'>
        <div class='col-sm-6'>
         <input onclick={window.location.replace('MovieAdminList.jsp')} type="button" class='btn btn-warning w-100' name="submit" id="Log" value="Cancel">
        </div>
         <div class='col-sm-6'>
          <input type="submit" class='btn btn-success w-100' name="submit" id="Log" value="DONE">
        </div>
        </div>
          
        </div>
      </form>
    </div>
    <br><br>
    </div>

<jsp:include page="footer.jsp" />
  </body>

  </html>