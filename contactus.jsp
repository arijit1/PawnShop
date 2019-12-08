<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Insert title here</title>
</head>
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
	     font-size:50px;
          margin-bottom: 100px;
         background-color: transparent;
          
      }
</style>     
<body>
<div class="topnav">

    <a href="getStarted.jsp"><b>HOME</b></a>
    <a href="about.jsp"><b>ABOUT</b></a>
    <a href="faq.jsp"><b>FAQs</b></a>
    <a href="services.jsp"><b>SERVICES</b></a>
    <a class="active" href="contactus.jsp"><b>CONTACT US</b></a>
    <div class="nav navbar-nav navbar-right"; margin-bottom: :10px; margin: 25px 0;>
    
    <b>
    	<font color="white"><%=java.util.Calendar.getInstance().getTime()%></font>
    	</b>
    
   </div> 
</div>

<!-- Container (Contact Section) -->
<div class="container-fluid">

 <font color="white">
  <div class="jumbotron text-center"><b>CONTACT</b></div> 
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
        <form action="contact" method="post">
        Name:<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
       Email:<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      Comment:<textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-bottom" type="submit">Send</button>
          </form> 
    <font color="red">  <%String name1=(String)request.getAttribute("result");
       if(name1!=null)
       {%>
    	  <%=name1 %>
      <%  }%>  </font>

        </div>
      </div>
    </div>
  </div>
</font>
</div></div>

</body>
</html>