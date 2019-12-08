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
    body{background-color:white;
    }
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
    <a  href="mortgage.jsp"><b>Mortgage Plans</b></a>
    
    <a class="active" href="SELL.jsp"><b>Sell Plans</b></a>
    
    <a href="LoanCalc.jsp"><b>Loan Calculator</b></a>
    </div>   


   
    
<img src="images/spinning-globe-gif-46.gif" alt="earth.gif" width="90px" >
 <div style="text-align:right; border: 3px solid white;">
    	<b>
    		<%=java.util.Calendar.getInstance().getTime()%>
    	</b>
    </div>
    <div class="container">
<div class="sticky"><strong><h1 style="color:RED;font-size: 50px;"><b>SELL YOUR PRODUCT</b></h1></strong></div>


<div class=" text-center">
  <%     
  			String ffname=(String)session.getAttribute("fnm");
  			if(ffname.length()>1)
  			{
  	%>
  			<h2><font color="mediumvioletred";><%="Welcome  <b><i>"+ffname+"</i></b> To Sell" %></font></h2>
  	<%		} 
  	
  	%>
  
  
</div></div>
  
<div class="container">
  <div class="row" >
    <h3><font color="red">*  For Other Countries In Ornament Type  Validation Will Be Done As Per The MarketValue Of The Desired Country .
    </font></h3>
          <h4>Vehicle Table</h4>
<table>
                  <tr>
                    <th>Product Type</th>
                    <th>Per Year Increase In Value</th>
                    <th>Country</th>
                      <th>Price</th>
                  </tr>
                  <tr>
                    <td>CAR</td>
                    <td>5%</td>
                    <td>India</td>
                      <td>-</td>
                  </tr>
                  <tr>
                    <td>TRUCK/BUS</td>
                    <td>5.5%</td>
                    <td>India</td>
                      <td>-</td>
                  </tr>   
                  <tr>
                    <td>SCOOTY</td>
                    <td>2.5%</td>
                    <td>India</td>
                      <td>-</td>
                  </tr>           
                  <tr>
                    <td>BIKE</td>
                    <td>3.5%</td>
                    <td>India</td>
                      <td>-</td>
                  </tr>  
                  <tr>
                    <td>CONSTRUCTION VEHICLE</td>
                    <td>6.5%</td>
                    <td>India</td>
                      <td>-</td>
                  </tr>          
</table>

      <h4>Ornaments Table</h4>
<table>
              <tr>
                <th>Product Type</th>
                <th>Per Year Increase In Value</th>
                <th>Country</th>
                  <th>Price</th>
              </tr>
              <tr>
                <td>GOLD</td>
                <td>6.0% of MarketValue</td>
                <td>India</td>
                  <td>-</td>
              </tr>
              <tr>
                <td>PLATINUM</td>
                <td>5.5% of MarketValue</td>
                <td>India</td>
                  <td>-</td>
              </tr>   
              <tr>
                <td>STEEL</td>
                <td>2.5% of MarketValue</td>
                <td>India</td>
                  <td>-</td>
              </tr>           
              <tr>
                <td>SILVER</td>
                <td>4.5% of MarketValue</td>
                <td>India</td>
                  <td>-</td>
              </tr>  
                      
</table>

      <font color="darkblue" style="text-decoration:underline"; >
<b><br> Use Loan CalCulator <br><br></b>
      </font>
	
  </div>
</div>




</body>
</html>