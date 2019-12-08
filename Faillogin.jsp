<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title>Fail Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
  <style>
      .topnav{
          overflow: hidden;
          background-color: black;
      }
      .topnav a{
          float: left;
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
       
body { background-size: cover;
     background-repeat: no-repeat;
	background-image: url(images/pawnshopgif.gif);
	}
    </style>
   
    </head>
    <body>
<div class="topnav">
        <a href="pawnshopfrontpage.jsp"><b>HOME</b></a>
        <a href="signup.jsp"><b>Register</b></a>
        <a href="loginpawnshop.jsp"><b>SignIn</b></a>
        <a href="mortgage.jsp"><b>Mortgage Plans</b></a>
        <a href="SELL.jsp"><b>Sell Plans</b></a>
        <a href="about.jsp"><b>About</b></a>
        <a href="LoanCalc.jsp"><b>Loan Calculator</b></a>
</div>    

       
<div class="container">   
    <div style="text-color:red">
    <h1>FAIL LOGIN</h1>
        <a href="loginpawnshop.html" >  <button type="submit" class="btn btn-default">Retry login with CORRECT  and PASSWORD </button></a> <br>
        
        </div></div>
    </body>
</html>