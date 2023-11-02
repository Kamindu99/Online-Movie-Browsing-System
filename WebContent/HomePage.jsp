<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie World</title>
 <link rel="icon"  href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />
</head>
<body>
  <jsp:include page="header.jsp" />
  
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" style='height:400px;object-fit: cover' src="https://img.freepik.com/free-photo/cinema-theater-multimedia-film-entertainment-concept_53876-124153.jpg?w=1380&t=st=1698139474~exp=1698140074~hmac=fd6fc6faee129043ffde6e997828cd07f0816cf14c3be5733254fbc9f6e02dd4" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" style='height:400px;object-fit: cover' src="https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/5593/675593-h" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" style='height:400px;object-fit: cover' src="https://www.yashrajfilms.com/images/default-source/movies/tiger-3/tiger-3---salman-khan-katrina-kaif5f98ada026f56f7f9f64ff0e00090313.jpg?sfvrsn=866dc2cc_6" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


      <div class="container mt-5 mb-5">
        <div class="row">
          <div class="col-md-6">
            <br />
            <h2>Find Your Favorite Movie & Tv Series </h2>
            <p style="font-size: 20px">
              "Movie World" is the best movie download site. Here you can find
              all types of movies, web series, and TV shows. You can easily
              download any movies from here. You can download movies from here
              in different languages. You can download movies from here in
              different formats such as 480p, 720p, 1080p, etc. You can download movies from here in different
              categories such as action, adventure, animation, comedy, crime,
              drama, fantasy, horror, mystery, sci-fi, thriller, war, etc
            </p>
            <a class="btn btn-primary w-50 h-30" href="/trainsList">
              Download Now
            </a>
          </div>
          <div class="col-md-6">
            <img
              style='border-radius: 10px'
              src="https://lajoyalink.com/wp-content/uploads/2018/03/Movie.jpg"
              alt="Train"
              class="img-fluid"
            />
          </div>
        </div>
      </div>
      
      
        
        <jsp:include page="footer.jsp" />
</body>
</html>