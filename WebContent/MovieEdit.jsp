<%@page import="com.movie.MovieDBUtil"%>
<%@page import="com.movie.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Edit</title>
     <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
         <link rel="stylesheet" type="text/css" href="Movie.css">
</head>
<body>
<jsp:include page="header.jsp" />

 <div style="background:gray">
    <br><br>
    <div class="main-form" >
 
      <form action="movieupdate" method="post" >
      
         <%
            String movieId = request.getParameter("mid");
            
            Movie movie = MovieDBUtil.getMovieById(movieId);

            if (movie != null) {
        %>
            
        <h1><b>Movie Details Edit</b></h1>
        <h4>Update Movie Details</h4><br>


        <label><b> MovieID</b></label> <br>
        <input  required type="text" id="mid" name="mid" placeholder="Enter the movieID" value="<%= movie.getMid() %>"><br><br>

        <label><b> MovieName</b></label> <br>
        <input type="text" required id="mname" name="mname" placeholder="Enter the movieName" value="<%= movie.getMname() %>"><br><br>

        <label><b> Language</b></label> <br>
        <input type="text" required id="mlang" name="mlang" placeholder="Enter the movie language" value="<%= movie.getMlang() %>"><br><br>

        <label><b> MovieURL</b></label> <br>
        <input type="text" required id="murl" name="murl" placeholder="Enter the movieUrl" value="<%= movie.getMurl() %>"><br><br>

        <label><b> Price</b></label> <br>
        <input type="text" required id="mprice" name="mprice" placeholder="Enter the moviePrice" value="<%= movie.getMprice() %>"><br><br>

        <div class="submitbtn">

           <div class='row'>
        <div class='col-sm-6'>
         <input onclick={window.location.replace('MovieAdminList.jsp')} type="button" class='btn btn-warning w-100' name="submit" id="Log" value="Cancel">
        </div>
         <div class='col-sm-6'>
          <input type="submit" class='btn btn-success w-100' name="submit" id="Log" value="Update">
        </div>
        </div>
        </div>
        <%
            } else {
        %>
                <p>Movie not found. </p>
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