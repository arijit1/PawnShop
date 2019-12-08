<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login page</title>
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
   
    <a href="signup.jsp"><b>Register</b></a>
    <a class="active" href="loginpawnshop.jsp"><b>SignIn</b></a>
    <a  href="getStarted.jsp"><b>HOME</b></a>
     
    </div>    


<div class="container">
    <h2><font color="white">USER LOGIN</h2></font>
  <form class="form-inline" action="PsLogin" method="post">
    <div class="form-group">
        <label for="email"><font color="white">Email:</label></font>
        
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
        <label for="pwd"><font color="white">Password:</label></font>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
      
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> <font color="white"> Remember me</label></font>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form> 
  
</div>

</body>
</html>
