<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title>Mortgage</title>
 
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     
    <style>
.topnav{
          overflow: hidden;
          background-color: lightgrey;}
          
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
.button {
    background-color: powderblue;
    border: none;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
} .button5 {font-size: 100px;}
.button4 {font-size: 70px;}
button:hover {
    opacity: 0.8;
}
h1 {border-radius: 25px;
    text-align: center;
}
h2 {border-radius: 25px; 
text-align: center;
    border-style: solid;
    border-width: 10px;
    border-color: orange;
}
h3 {
    border-style: solid;
    border-width: 10px;
    border-color: green;
}

div.sticky {
    position: sticky;`
    width: 50%;
    bottom: 10px;
    border: 20px solid skyblue;
	}
	
        table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
	
    border: 1px solid red;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: skyblue;
}
 img{
 float:left;
 }
	
</style>
</head>
<body>
<div class="topnav">
     <div class="nav navbar-nav navbar-right" >
     <a href="getStarted.jsp"><b>SignOut</b></a>
     <div class="col-sm-4">
    
    <%     
  	String fname=(String)session.getAttribute("fnm");
  			if(fname.length()>1){
  %>
  <font color="yellow";size="6";><%="Welcome <b>"+fname+"</b>" %></font>
  <%} %>
  </div>
    </div>
     <a href="signup.jsp"><b>Register</b></a>
    <a class="active" href="mortgage.jsp"><b>Mortgage Plans</b></a>
    
    <a href="SELL.jsp"><b>Sell Plans</b></a>
    
    <a href="LoanCalc.jsp"><b>Loan Calculator</b></a>
    </div>   


   
    
<img src="images/spinning-globe-gif-46.gif" alt="earth.gif" width="90px" >
 <div style="text-align:right; border: 3px solid white;">
    	<b>
    		<%=java.util.Calendar.getInstance().getTime()%>
    	</b>
    </div>
    <div class="container">
<div class="sticky"><strong><h1 style="color:RED;font-size: 50px;"><b>MORTGAGE</b></h1></strong></div>


<div class=" text-center">
  <%     
  			String ffname=(String)session.getAttribute("fnm");
  			if(ffname.length()>1)
  			{
  	%>
  			<h2><font color="mediumvioletred";><%="Welcome  <b><i>"+ffname+"</i></b> To Full Benefits At Lower Interest" %></font></h2>
  	<%		} 
  	
  	%>
  
  
</div></div>
  
<div class="container">
  <div class="row" >
    <h3><font color="red">*  For Other Countries In Ornament Type And Land-Building Type Validation Will Be Done As Per The MarketValue Of That Type In That Country .
    </font></h3>
      <h4>Vehicle Table</h4>
<table>
                  <tr>
                    <th>Product Type</th>
                    <th>Decrease In Price PerYear</th>
                    <th>Country</th>
                      <th>AnnualInterest</th>
                  </tr>
                  <tr>
                    <td>TRUCK/BUS</td>
                    <td>60%</td>
                    <td>All Country</td>
                      <td>20%</td>
                  </tr>
                          <tr>
                    <td>SCOOTY</td>
                    <td>30%</td>
                    <td>All Country</td>
                      <td>20%</td>
                  </tr>
                  <tr>
                    <td>CAR</td>
                    <td>40%</td>
                    <td>All Country</td>
                      <td>20%</td>
                  </tr>
                          <tr>
                    <td>BIKE</td>
                    <td>35%</td>
                    <td>All Country</td>
                      <td>20%</td>
                  </tr>
                          <tr>
                    <td>CONSTRUCTION VEHICLE</td>
                    <td>50%</td>
                    <td>All Country</td>
                      <td>20%</td>
                  </tr>
</table>
      
      <!--NEW TABLE FOR ORNAMENTS-->
     <h4><br>Ornament Table</h4> 
      
<table>
                  <tr>
                    <th>Product Type</th>
                    <th>Decrease In Price </th>
                    <th>Country</th>
                      <th>Carat</th>
                      <th>MarketPrice</th>
                      <th>AnnualInterest</th>
                  </tr>
                  <tr>
                    <td>GOLD</td>
                    <td>40%</td>
                    <td>INDIA</td>
                      <td>Less than 22 Carat</td>
                      <td>₹3229.95/Gram</td>
                      <td>20%</td>
                  </tr>
                  <tr>
                    <td>GOLD</td>
                    <td>30%</td>
                    <td>INDIA</td>
                      <td>More than 22 Carat</td>
                      <td>₹3020.0/Gram</td>
                      <td>20%</td>
                  </tr>
  
                  <tr>
                    <td>PLATINUM</td>
                    <td>30%</td>
                    <td>INDIA</td>
                      <td>-</td>
                      <td>₹1,962.99/Gram</td>
                      <td>20%</td>
                  </tr>
                          <tr>
                    <td>STEEL</td>
                    <td>75%</td>
                    <td>INDIA</td>
                      <td>-</td>
                      <td>₹50-60/Kg</td>
                      <td>20%</td>
                  </tr>
                  <tr>
                    <td>STAINLESS-STEEL</td>
                    <td>60%</td>
                    <td>INDIA</td>
                      <td>-</td>
                      <td>₹250-300/Kg</td>
                      <td>20%</td>
                  </tr>
                          <tr>
                    <td>SILVER</td>
                    <td>30%</td>
                    <td>INDIA</td>
                      <td>-</td>
                      <td>₹42,952.00/Kg</td>
                      <td>20%</td>
                  </tr>
</table>

     <h4><br>Deposit Table</h4> 
      
<table>
                  <tr>
                    <th>Deposit Type</th>
                    <th>Decrease In Price </th>
                    <th>Country</th>
                    <th>AnnualInterest</th>
                  </tr>
                  <tr>
                    <td>MUTUAL FUND</td>
                    <td>20%</td>
                    <td>INDIA</td>
                    <td>20%</td>
                  </tr>
                  <tr>
                    <td>BOND PAPERS</td>
                    <td>30%</td>
                    <td>INDIA</td>
                    <td>20%</td>
                  </tr>
  
                  <tr>
                    <td>FIX DEPOSIT</td>
                    <td>10%</td>
                    <td>INDIA</td>
                    <td>20%</td>
                  </tr>
                        
</table> 

<font color="darkblue" style="text-decoration:underline"; >
<b><br> Use Loan CalCulator <br><br></b>
      </font>
	
  </div>
</div>




</body>
</html>
