<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>ORNAMENT</title>
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
	
        background-color: white;
	}
    .jumbotron{
          background-size: cover;
     background-repeat: no-repeat;
	
          padding-top: 30px;
          padding-bottom: 30px;
          margin-bottom: :30px;
          background-color: transparent;
          color: black;
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

<div class="container"> 
    <div style="text-color:black;background-color:pink">
    <div class="jumbotron text-center">  <font color="black"><h1> GOLD AND ORNAMENT MORTGAGE</h1><br><br><h2>Give  Details</h2><br><br></font></div>
    <form action="ornament" method="post">
    <div class="form-group">
    <font color="black" ><label for="name" ><h1>Type Of Ornament</h1></label></font>
    <select name="ornamentType">
  <option value="default">Select</option>
  <option value="gold">GOLD</option>
  <option value="platinum">PLATINUM</option>
  <option value="steel">STEEL</option>
  <option value="silver">SILVER</option>
</select> 
<font color="red">  <%String num1=(String)request.getAttribute("error3");
       if(num1!=null)
       {%>
    	  <%=num1 %>
      <%  }%>  </font>
<br><br>
          <label for="name">In Which country You want to keep it as mortgage</label>
        <input type="text" class="form-control" placeholder="Country " name="country" style='text-transform:uppercase'/>
         <font color="red">  
		<%String num2=(String)request.getAttribute("error2");
       	if(num2!=null)
       	{ 	%>
    	  	<%=num2 %>
      		<%  }	%>  
</font><br>
          
        <label for="name">How many carat:</label>
        <input type="number" class="form-control" placeholder="Carat "  name="carat" />
        <font color="red">  
		<%String num3=(String)request.getAttribute("error4");
       	if(num3!=null)
       	{	%>
    	  	<%=num3 %>
      		<%  }	%>  
</font>
        <br>
        
        <label for="name">Weight:</label>
        <input type="number" class="form-control" placeholder="in Kg" name="weight">
        <font color="red">  
		<%String num4=(String)request.getAttribute("error7");
       	if(num4!=null)
       	{	%>
    	  	<%=num4 %>
      		<%  }	%>  
</font>
        <br>
      
          <label for="name">Year Of Manufacture:</label>
        <input type="number" class="form-control" Placeholder="YYYY" maxlength="4" name="year">
        <font color="red">  
		<%String num5=(String)request.getAttribute("error1");
       	if(num5!=null)
       	{	%>
    	  	<%=num5 %>
      		<%  }	%>  
</font>
        <br>
         
         
        <label for="name">Price at Which You Have Purchased</label><br>
       <input type="number" class="form-control" placeholder="In Rupees" name="Rupees">
       <font color="red">  
		<%String num6=(String)request.getAttribute("error6");
       	if(num6!=null)
       	{	%>
    	  	<%=num6 %>
      		<%  }	%>  
</font>
       <br>
    
        </div>
    
        <b>Price will be evaluated as per ornaments present market value</b><br>
 <button class="button button4" type="submit" value="register">Calculate</button>
        </div></div>
    </form>
    <!-- RESULT FROM SERVLET -->
     <div class="panel panel-danger">
      <div class="panel-heading">Result</div>
      <div class="panel-body"> 
      
       <%String num=(String)request.getAttribute("Price");
       if(num==""||num==null)
       {
    	   out.print("Range of Loan You can Appy For should less than or equal to 0");
       }
       else 
    	   out.print("Range of Loan You can Appy For should less than or equal to"+num);  
    	   
       %> 
    </div>
   
    </div></div>
</body>
</html>
