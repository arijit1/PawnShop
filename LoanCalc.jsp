<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>CALC</title>
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
          background-color: pink;
          color: black;
      }
    
    body { background-size: cover;
     background-repeat: no-repeat;
	<!--background-image: url(images/maxresdefault.jpg);-->
        background-color: aliceblue;
	}
    .jumbotron{
          background-size: cover;
     background-repeat: no-repeat;
	
          padding-top: 30px;
          padding-bottom: 30px;
          margin-bottom: :30px;
          background-color: transparent;
          color: azure;
      }
    .button {
    background-color: antiquewhite;
    border: none;
    color: black;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 20px 10px;
    cursor: pointer;
}button:hover {
    opacity: 0.8;
} 
.button5 {font-size: 10px;}
.button4 {font-size: 20px;}
    </style>
    </head>
<body>
        <img src="images/spinning-globe-gif-46.gif" alt="earth.gif" width="100px" >
            <div class="topnav">
   <div class="nav navbar-nav navbar-right";>
   <a href="getStarted.jsp"><b>SignOut</b></a>
   <div class="col-sm-4">
    <%     
  	String name=(String)session.getAttribute("fnm");
  			if(name.length()>1){
  %>
  <font color="yellow";size="6";><%="Welcome <b>"+name+"</b>" %></font>
  <%} %>
    </div></div>
            <a href="signup.jsp"><b>Register</b></a>
            
            <a href="mortgage.jsp"><b>Mortgage Plans</b></a>

            <a href="SELL.jsp"><b>Sell Plans</b></a>
          
            <a class="active" href="LoanCalc.jsp"><b>Loan Calculator</b></a>
            </div>    
 
<div class="container text-center">
    <div style="text-color:black;background-color:pink">
        <div class="jumbotron text-center">  <font color="black"><h1> LOAN CALCULATOR</h1></font></div>
            <form action="LoanCalc" method="post">
                <div class="form-group">
                      <font color="black" ><label for="name" ><h1>Select Mortgage Type:</h1></label></font> <br>
     <div class="dropdown">  
<select name="mortgagetype">
          <option value="default">Select</option>
          <option value="vehicle">vehicle</option>
          <option value="GnO">Gold And Ornaments</option>
          <option value="Deposit">Fix Deposits and Bonds</option>
          
</select> 
   
 
                </div> <br/></div>
    
<button type="submit" class="btn btn-primary">Next <span class="badge">></span></button>
                
    
        </form>
    </div>
    </div>
</body>
</html>
