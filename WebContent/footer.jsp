<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title></title>

    <style>
      .movieFooter .footer {
        background-color: #333;
        color: #fff;
        padding: 40px 0;
        display: flex;
        justify-content: space-around;
        align-items: flex-start;
      }

      .movieFooter .footer-content {
        max-width: 300px;
        text-align: center;
      }

      .movieFooter h3 {
        font-size: 24px;
        margin-bottom: 20px;
      }

      .movieFooter p {
        font-size: 16px;
        margin-bottom: 10px;
      }

      .movieFooter .search-bar {
        text-align: center;
      }

      .movieFooter .search-bar form {
        padding-bottom: 10px;
        display: inline-block;
      }

      .movieFooter .search-bar input[type="text"] {
        width: 200px;
        padding: 8px;
        font-size: 14px;
      }

      .movieFooter .search-bar button {

        padding: 8px 16px;
        font-size: 14px;
        background-color: #84aa1a;
        color: #fff;
        border: none;
        cursor: pointer;
      }
    </style>
  </head>

  <body>
    <div class="movieFooter">
      <footer class="footer">
        <div class="footer-content">
          <h3>About Us</h3>
          <p> MovieWorld is a website where you can find all the latest movies and tv series. </p>
        </div>
        <div class="footer-content">
          <h3>Contact Info</h3>
          <p>Email: info@example.com</p>
          <p>Phone: +1 123 456789</p>
        </div>
        <div class="footer-content search-bar">
          <h3>Search</h3>
          <form action="#" method="get">
            <input type="text" placeholder="Search...">
            <button type="submit">Search</button>
          </form>
        </div>
        <div class="footer-content">
          <h3>Follow Us</h3>
          <p>website: movieworld.com</p>
          <p>Facebook: MovieWorld</p>
        </div>
      </footer>
    </div>
  </body>

  </html>