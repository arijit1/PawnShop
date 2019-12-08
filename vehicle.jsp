<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Vehicles</title>
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
	
          padding-top: 10px;
          padding-bottom: 10px;
          margin-bottom: :10px;
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
    
    <a href="signup.jsp"><b>Register</b></a>
    
    <a href="mortgage.jsp"><b>Mortgage Plans</b></a>
    <a href="SELL.jsp"><b>Sell Plans</b></a>
  
    <a class="active" href="LoanCalc.jsp"><b>Loan Calculator</b></a>
    <div class="nav navbar-nav navbar-right";>
    <a href="getStarted.jsp"><b>SignOut</b></a>
    <div class="col-sm-4">
  <%     
  			String fname=(String)session.getAttribute("fnm");
  			if(fname.length()>1)
  			{
  	%>
  			<font color="mediumvioletred";><%="Welcome  <b><i>"+fname+"</i></b>" %></font>
  	<%		} 
  	
  	%>
  

</div></div>
    </div>    

<div class="container">
        <div style="text-color:black;background-color:pink">
    <div class="jumbotron text-center"> <h1> VEHICLE MORTGAGE</h1><br><br><h2><b>Give Vehicle Details</b></h2><br><br></div>
   

    <form action="vahicleCalc" method="post">
    <div class="form-group"> 
  <%String veh=(String)request.getAttribute("VehicleType"); 
  if(veh==null)
	  veh="";
  %>
        
 <label for="name" ><h1>Type Of Vehicle</h1>  
 
        </label> <select name="vehicleType" value=<%=veh %>>
  <option value="default">Select</option>
  <option value="SCOOTY">SCOOTY</option>
  <option value="BIKE">BIKE</option>
  <option value="TRUCK">TRUCK</option>
  <option value="CAR">CAR</option>
  <option value="CONSTRUCTION VEHICLE">CONSTRUCTION VEHICLE</option>
</select><font color="red">  <%String num=(String)request.getAttribute("error1");
       if(num!=null)
       {%>
    	  <%=num %>
      <%  }%>  </font>
       <br><br> 
       <!-- MODEL NUMBER REPOPULATION -->
       <!--  -->
       <!--  -->
       <!--  -->
       <!--  -->
       <!--  -->
       <!--  -->
       <!--  -->
       <!--  -->
       <!--  -->
       <!--  -->
       
       <%String model=(String)request.getAttribute("ModelNum"); 
  if(model==null)
	  model="";
  %>
          <label for="name">MODEL NUMBER:</label>
        <input type="text" class="form-control" placeholder="MODEL NUMBER" name="modelnumber" value=<%=model %>>
        <!--  -->
       <!-- Error in model number field -->
       <!--  -->
       <!--  -->
       
        <font color="red">  <%String num1=(String)request.getAttribute("error2");
       if(num1!=null)
       {%>
    	  <%=num1 %>
      <%  }%>  </font>
        <br>
        <!-- Year Repopulation  -->
       <!--  -->
       <!--  -->
       <!--  -->
       
        <%String yr=(String)request.getAttribute("YearP"); 
  if(yr==null)
	  yr="";
  %>
        
         <label for="year">Year Of Purchase</label>
        <input type="number" class="form-control" placeholder="YYYY" maxlength="4"  name="year" value=<%=yr %>>
       <!--  -->
       <!--error in year  -->
       <!--  -->
       <!--  -->
       <!--  -->
       
        <font color="red">  <%String num3=(String)request.getAttribute("error3");
       if(num3!=null)
       {%>
    	  <%=num3 %>
      <%  }%>  </font>
      <!--  -->
       <!--  -->
       <!-- if invalid year entered error5-->
       <!--  -->
       
      <font color="green">  <%String num5=(String)request.getAttribute("error5");
       if(num5!=null)
       {%>
    	  <%=num5 %>
      <%  } else
      out.print(" ");
      %> 
      
       </font>
       
        <br>
        <!--  -->
       <!--Price field repopulation  -->
       <!--  -->
       <%String pric=(String)request.getAttribute("price"); 
  if(pric==null)
	  pric="";
  %>
       
          <label for="name">Price at Which You Have Purchased</label><br>
       <input type="number" class="form-control" placeholder="In Rupees" name="Rupees" value=<%=pric %>>
       <font color="red">  <%String num4=(String)request.getAttribute("error4");
       if(num4!=null)
       {%>
    	  <%=num4 %>
      <%  }%>  </font>
       <br>
     </div>
    
 <button class="button button4" type="submit" value="register">Calculate</button>
    </form> </div></div>
    <div class="panel panel-danger">
      <div class="panel-heading">Result</div>
      <div class="panel-body"> 
     <font color="green"><b> 
       <%String numm=(String)request.getAttribute("pricepay");
       if(numm==""||numm==null)
       {
         out.print("Range of Loan You can Appy For should less than or equal to 0");
       }else
  		out.print("Range of Loan You can Appy For should less than or equal to"+numm);  
    	   
       %> </b></font>
   <br>
   <font color="green"><b> 
       <%String SI=(String)request.getAttribute("SI");
       if(SI==""||SI==null)
       {
         out.print("Every Month You Have To Pay: 0");
       }else
  		out.print("Every Month You Have To Pay: "+SI);  
    	   
       %> </b></font>
     </div>
   
    </div></div>
    
</body>
</html>
