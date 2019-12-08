<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
 <!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>-->

    <title >Pawn Shop MainPage</title>
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
       
body { background-size: cover;
     background-repeat: no-repeat;
	background-image: url(images/Train%20Station%20Foggy%20Night%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg);
	}
      .jumbotron{
          background-size: cover;
     background-repeat: no-repeat;
	<!--background-image: url(images/pawnshopgif.gif);-->
          padding-top: 10px;
          padding-bottom: 10px;
          margin-bottom: :10px;
         background-color: black;
          color: azure;
      }
      .button {
    background-color: transparent;
    border: none;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
}button:hover {
    opacity: 0.8;
} 
.button5 {font-size: 100px;}
.button4 {font-size: 70px;}
h1 {
    text-align: center;
}
h1.a {
    border-style: solid;
    border-width: thin;
    

}
h2 {
    border-style: solid;
    border-width: ;
}

div.sticky {
    position: sticky;`
    width: 10%;
    bottom: 10px;
    border: 5px solid white;
	}
      
div.dec {
    text-decoration-line: underline;
    text-decoration-style: wavy;
}      
	
	
</style>
</head>
<script type="text/javascript">

</script>
<body>

<div class="topnav">
     <div class="nav navbar-nav navbar-right" >
     <a href="getStarted.jsp"><b>SignOut</b></a>
     <div class="col-sm-4">
    
    <%     
  	String name=(String)session.getAttribute("fnm");
  			if(name.length()>1){
  %>
  <font color="yellow";size="6";><%="Welcome <b>"+name+"</b>" %></font>
  <%} %>
  </div>
    </div>
    
    <a href="mortgage.jsp"><b>Mortgage Plans</b></a>
    
    <a href="SELL.jsp"><b>Sell Plans</b></a>
    
    <a href="LoanCalc.jsp"><b>Loan Calculator</b></a>
    </div>   
    
            <h1 class="a" style="letter-spacing: 15px; color:white; ">P A W N  S H O P</h1>
<div class="container">        
<form class="form-inline">
        <div class="input-group">
    <input type="search" class="formcontrol" size="140" placeholder="Search" required>
            <div class="input-group-btn">
                <button type="button" class="btn btn-danger">Search</button>
            </div>
    </div></form></div>

<!--div class="jumbotron text-center"-->
    
<!--    <h1>PAWN SHOP</h1> </div>-->
    
</div>
  
<div class="container">
<!--  <div class="row">
    <div class="col-sm-4">-->
    <div > <h1 style="background-color:black; opacity:0.5" ><font color="green" ><h1><q>WE ARE HERE TO GIVE YOU</q></h1> </font>
        
        <h2> <div style="background-color:black; opacity:0.8; text-align:center;" ><font color="white"><br><i> You will get your desired need here..! <br>
        Usually people getover valuable things and struggle a lot to sell it and get valuable Price.<br>So this is less effort place where you have to just give the product detail and get valuable price of it.
        100% Gauranteed service and full security services is provided here.Here you can Calculate and estimate what range of Loan money you will get and Sell Money.<br>
        Here you can keepit as Mortgage also.An additional benefit is being provided by us.
        </i> </font> </h2>
    
	
</body>
</html>


