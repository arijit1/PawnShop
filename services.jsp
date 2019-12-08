<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Company Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
      
       .topnav{
          overflow: hidden;
          background-color: lightgrey;
      }
      .topnav a{
          float: left;
          color: blue;
          text-align: center;
          padding: 15px 15px;
          text-decoration: none;
          font-size:17px;
          
      }
      .topnav.b{
          float: right;
          color: blue;
          text-align: center;
          padding: 15px 15px;
          text-decoration: none;
          font-size:17px;
          
      }
      .topnav a:hover{
          background-color: beige;
          color: blueviolet;
      }
      .topnav a.active{
          background-color: burlywood;
          color: black;
      }
     
      
  .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo {
      font-size: 200px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
        
body { background-size: cover;
     background-repeat: no-repeat;
	background-image: url(images/Train%20Station%20Foggy%20Night%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg);
	}
  </style>
</head>
<body>
    
    
<div class="topnav">
    <a href="getStarted.jsp">Home</a>
    <a href="faq.jsp">FAQs</a>
    <a class="active" href="services.jsp">Services</a>
   
    </div>    
    
<div class="container"><font color="white">
  <h2><b>SERVICES</b></h2>
  
  <br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-king"></span>
      <h4>Loan</h4>
      <p>Low Interest</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-home"></span>
      <h4>Mortgage</h4>
      <p>Little Deptors Property</p>
    </div>
    
  </div>
  <br><br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-check"></span>
      <h4>Security</h4>
      <p>Guaranteed</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate"></span>
      <h4>Offers</h4>
      <p>Exciting Offers</p>
    </div>
    </div></font>
  </div>
    </body></html>
