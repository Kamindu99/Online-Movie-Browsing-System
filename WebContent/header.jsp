<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
      .nav-item .nav-link {
        font-size: 20px;
      }
    </style>
  </head>

  <body>
  
  
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand ml-5" href="MovieList.jsp" style="font-size:25px">  <img src="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" style=" height: 50px" alt="Logo" className="logo-image mr-5" /> Movie World</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse ml-5" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="HomePage.jsp">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="MovieList.jsp">Movie</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="TvSeriesList.jsp">Tv Series</a>
          </li>
          
             <li class="nav-item">
            <a class="nav-link" href="MovieEdit.jsp">Favourites</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="movieAdd.jsp">About us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="MovieEdit.jsp">Contact us</a>
          </li>
          
           <li class="nav-item">
            <a class="nav-link" href="MovieEdit.jsp">Favourites</a>
          </li>
              <li class="nav-item">
            <a class="nav-link" href="MovieEdit.jsp">Payment</a>
            
            
          </li>
           <li class="nav-item">
            <a class="nav-link" href="AdminLogin.jsp"> Admin_Login</a>
            
            
          </li>
          
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <li class="nav-item mr-3">
            <a class="nav-link btn btn-info" href="Login.jsp">Log In</a>
          </li>
          <li class="nav-item">
            <a class="nav-link btn btn-info" href="#">Sign Up</a>
          </li>
        </form>
      </div>
    </nav>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
      crossorigin="anonymous"></script>
  </body>

  </html>