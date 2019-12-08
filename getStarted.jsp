<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
 

    <title >Get Started Landing Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="animationpawn.css">
  
  
  
  <style>
      .topnav{
          overflow: hidden;
          background-color: transparent;
      }
      .topnav a{
          float: left;
          color: darkgoldenrod;
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
	background-image: url(images/Black-Images-HD-1920x1080-Free-Download.jpg);
	}
      .jumbotron{
          background-size: cover;
     background-repeat: no-repeat;
	     
          margin-bottom: :10px;
         background-color: transparent;
          
      }
      
h1 {
    text-align: center;
}
h1.a {
    border-style: solid;
    border-width: thin;
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
      
      .logo {
      font-size: 200px;
  }
  @media screen and (max-width: 500px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  

	
</style>
</head>

<body>
<div class="topnav">

    <a class="active" href="getStarted.jsp"><b>HOME</b></a>
    <a href="about.jsp"><b>ABOUT</b></a>
    <a href="faq.jsp"><b>FAQs</b></a>
    <a href="services.jsp"><b>SERVICES</b></a>
    <a href="contactus.jsp"><b>CONTACT US</b></a>
    <div class="nav navbar-nav navbar-right"; margin-bottom: :10px; margin: 25px 0;>
    
    <b>
    	<font color="white">	<%=java.util.Calendar.getInstance().getTime()%></font>
    	</b>
    
   </div> 
</div>
    <div class="jumbotron text-center">
    <strong><h1 class="a" style="color:yellow;font-size: 100px;font: italic bold 50px/100px Georgia, serif; text-shadow: 15px 15px darkgoldenrod;">B I E N V E N U E</h1></strong>
    </div>
    <br><br><br>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo"></span>
                </div> 
                
       <br/><br/> <div class="col-sm-4">

  <a href="signup.jsp"><button  type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-user"> REGISTER <span class="badge"><b>></b></span></button> </a></span>
         <a href="loginpawnshop.jsp"><button  type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-log-in"> SIGN-IN <span class="badge"><b>></b></span></button> </a></span>
          
        </div>
            </div>
    </div>
    <div id="frontstyle" > 
    <font size="10";text-color="white" >
    <b>WELCOME</b><br><i class="icomoon icon-happy"></i> </font></div>
    
    <!-- Container (Contact Section) 
<div class="container-fluid">

 
  <h2 class="text-center" style="text-color:white;"><b>CONTACT</b></h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Bhubaneswar, India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91-7064002367</p>
      <p><span class="glyphicon glyphicon-envelope"></span> sengupta.arijit84@gmail.com</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-bottom" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>  -->
 
	
</body>
</html>


