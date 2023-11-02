<%@page import="com.movie.TvSeriesDBUtil"%>
<%@page import="com.movie.TvSeries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TV Series Edit</title>
     <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
         <link rel="stylesheet" type="text/css" href="Movie.css">
</head>
<body>
<jsp:include page="header.jsp" />

 <div style="background:gray">
    <br><br>
    <div class="main-form" >
 
      <form action="tvseriesupdate" method="post" >
      
         <%
            String tvseriesId = request.getParameter("tid");
            
            TvSeries tvseries = TvSeriesDBUtil.getTvSeriesById(tvseriesId);

            if (tvseries != null) {
        %>
            
        <h1><b>TV Series Details Edit</b></h1>
        <h4>Update TV Series Details</h4><br>


        <label><b> TV Series ID</b></label> <br>
        <input  required type="text" id="tid" name="tid" placeholder="Enter the TV Series ID" value="<%= tvseries.getTid() %>"><br><br>

        <label><b> TV Series Name</b></label> <br>
        <input type="text" required id="tname" name="tname" placeholder="Enter the TV Series Name" value="<%= tvseries.getTname() %>"><br><br>

        <label><b> Language</b></label> <br>
        <input type="text" required id="tlang" name="tlang" placeholder="Enter the TV Series language" value="<%= tvseries.getTlang() %>"><br><br>

        <label><b> TV Series Episode</b></label> <br>
        <input type="text" required id="turl" name="epi" placeholder="Enter the No of Episode" value="<%= tvseries.getEpi() %>"><br><br>
        
        <label><b> TV Series URL</b></label> <br>
        <input type="text" required id="turl" name="turl" placeholder="Enter the TV Series Url" value="<%= tvseries.getTurl() %>"><br><br>

        <label><b> Price</b></label> <br>
        <input type="text" required id="tprice" name="tprice" placeholder="Enter the TV Series Price" value="<%= tvseries.getTprice() %>"><br><br>

        <div class="submitbtn">

           <div class='row'>
        <div class='col-sm-6'>
         <input onclick={window.location.replace('TVSeriesAdminList.jsp')} type="button" class='btn btn-warning w-100' name="submit" id="Log" value="Cancel">
        </div>
         <div class='col-sm-6'>
          <input type="submit" class='btn btn-success w-100' name="submit" id="Log" value="Update">
        </div>
        </div>
        </div>
        <%
            } else {
        %>
                <p>TV Series not found. </p>
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