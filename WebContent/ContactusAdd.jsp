<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

  <html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta charset="ISO-8859-1">
<link rel="icon" href= "https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png"/>
<link rel ="stylesheet" type ="text/css" href ="Movie.css">
    <title>Contact Us Form</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div  style ="background-color:gray">
<br><br>
<div class ="main-form">
<form id = "loginto" action="contactusadd" method ="post">
<h1> Contact us</h1>
 <label><b>Name</b></label> <br>
        <input type="text" id="name" name="name" placeholder="Enter the name"><br><br>

        <label><b> Email</b></label> <br>
        <input type="email" id="email" name="email" placeholder="Enter the email" required><br><br>

        <label><b> Message</b></label> <br>
        <input type="text" id="message" name="message" placeholder="Enter the message" required><br><br>
<divv class ="submitbtn">
<div class ='row' >
<div class ='col-sm-6'>

<input onclick = {window.location.replace("ContactusList.jsp")} type ="button" class ='btn btn-warning w-100' name = "submit" id ="Log" value ="cancel">
</div>
 <div class='col-sm-6'>
          <input type="submit" class='btn btn-success w-100' name="submit" id="Log" value="DONE">
    </div>
    </div>
    </div></div>
    
</form>


</div>
<jsp:include page="footer.jsp"/>

</body>

</html>