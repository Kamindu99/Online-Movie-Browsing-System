<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en" xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <meta charset="ISO-8859-1">
    <title>TV Series Upload</title>
     <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
    <link rel="stylesheet" type="text/css" href="Movie.css">
  </head>

  <body>
  <jsp:include page="header.jsp" />
    <div style="background-color: gray">
    <br><br>
    <div class="main-form" >
 
      <form id="loginto" action="tvseriesadd" method="post">

        <h1><b>TV Series Upload</b></h1>
        <h4>Fill into upload</h4><br>


        <label><b> TV Series ID</b></label> <br>
        <input type="text" id="tid" name="tid" placeholder="Enter the TV Series ID"><br><br>

        <label><b> TV Series Name</b></label> <br>
        <input type="text" id="tname" name="tname" placeholder="Enter the TV Series Name" required><br><br>

        <label><b> Language</b></label> <br>
        <input type="text" id="tlang" name="tlang" placeholder="Enter the TV Series language" required><br><br>
        
        <label><b> Episode</b></label> <br>
        <input type="text" id="epi" name="epi" placeholder="Enter the No of Episode" required><br><br>

        <label><b> TV Series URL</b></label> <br>
        <input type="text" id="tUrl" name="turl" placeholder="Enter the TV Series Url" required><br><br>

        <label><b> Price</b></label> <br>
        <input type="text" id="tprice" name="tprice" placeholder="Enter the TV Series Price" required><br><br>

        <div class="submitbtn">
        <div class='row'>
        <div class='col-sm-6'>
         <input onclick={window.location.replace('TVSeriesAdminList.jsp')} type="button" class='btn btn-warning w-100' name="submit" id="Log" value="Cancel">
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