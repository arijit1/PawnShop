<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sign up</title>
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
          background-color: yellow;
          color: black;
      }
    
    body { background-size: cover;
     background-repeat: no-repeat;
	<!--background-image: url(images/pawnshopgif.gif); -->
        background-color: white;
	}
    .jumbotron{
          background-size: cover;
     background-repeat: no-repeat;
	<!--background-image: url(images/pawnshopgif.gif);-->
          padding-top: 30px;
          padding-bottom: 30px;
          margin-bottom: :30px;
         background-color: lightgoldenrodyellow;
          color: black;
      }
      img {
    float: left;
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
   
    <div class="topnav">
 
            <a class="active" href="signup.jsp"><b>Register</b></a>
            <a href="loginpawnshop.jsp"><b>SignIn</b></a>
            <a  href="getStarted.jsp"><b>HOME</b></a>
             
    </div>   
  
 <img src="images/spinning-globe-gif-46.gif" alt="earth.gif" width="90px" >
 <div style="text-align:right; border: 3px solid green;">
    	<b>
    		<%=java.util.Calendar.getInstance().getTime()%>
    	</b>
    </div>
<div class="container">
  <div class="jumbotron text-center"> 
            <font color="black"><h1> REGISTER</h1></font></div>
              <div style="text-color:black;background-color:yellow">
              <div style="font-style:normal;text-color:red;">
      <%List li1=(List)request.getAttribute("error");
      	if(li1!=null){
      		Iterator itr=li1.iterator();
      		while(itr.hasNext()){
      			out.print("<li>"+itr.next()+"</li>");
      		}
      	}
      %> </div> 
      
    	           <form action="Signup" method="post">
                    <div class="form-group">
                    <%
				// Repopulation of form fields
				String name=(String)request.getAttribute("Firstname");
				if(name==null)
				name="";
					%>
                    
            <label for="name">First Name:</label>
            <input type="First name" class="form-control" placeholder="First Name" name="fname" value="<%=name%>"/>
            
            <br>
            
            <%
				// Repopulation of form fields
				String Lastname=(String)request.getAttribute("Lastname");
				if(Lastname==null)
					Lastname="";
					%>
            
            <label for="name">Last Name:</label>
            <input type="Last name" class="form-control" placeholder="Last Name" name="lname" value="<%=Lastname%>">
         <br>
        
            <label for="name">Gender:</label> <br>

                    <select name="gender">
                              <option value="default">Select</option>
                              <option value="male">Male</option>
                              <option value="female">Female</option>

                    </select> <br><br>
        <%
				// Repopulation of form fields
				String MortgageType=(String)request.getAttribute("Firstname");
				if(MortgageType==null)
					MortgageType="";
					%>
         <label for="name">Mortgage Type</label> <br>
       
                <select name="typeMortgage" value="<%=MortgageType%>>">
                      <option value="default">Select</option>        
                      <option value="vehicle">vehicle</option>
                      <option value="Ornament">Ornament</option>
                      <option value="deposit">Deposit </option>
                      <option value="property">Property</option>

                </select> <br><br> 
                 <%
				// Repopulation of form fields
				String ProductType=(String)request.getAttribute("ProductType");
				if(ProductType==null)
					ProductType="";
					%>
        
        <label for="text">Specify Mortgage Type:</label>  <br/>  
        <input type="text" class="form-control" placeholder="if vehicle then Scooty,truck,etc.if ornament type then gold,silver,etc. " name="Product" value="<%=ProductType%>"><br>
        <!-- Present Address -->
        <%
				// Repopulation of form fields
				String tempaddress=(String)request.getAttribute("Temp_addr");
				if(tempaddress==null)
					tempaddress="";
					%>
        <label for="text">Present Address:</label>  <br/>  
        <input type="text" class="form-control" placeholder="Address" name="temp-addr" value="<%=tempaddress%>"><br>
        
        <label for="text">State:</label>  <br/>  
<select name=tempstatelist>
                                <option value="default">------------Select State------------</option>
                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                <option value="Daman and Diu">Daman and Diu</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Lakshadweep">Lakshadweep</option>
                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Orissa">Orissa</option>
                                <option value="Pondicherry">Pondicherry</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Uttaranchal">Uttaranchal</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="West Bengal">West Bengal</option>
</select><br><br>

 <label for="text">City:</label>  <br/>  
<select name=tempcitylist>
                                <option value="default">------------Select City------------</option>
                                <option>Ahmedabad</option> 
                                <option>Bengaluru/Bangalore</option>
                                <option>Chandigarh</option>
                                <option>Chennai</option>
                                <option>Delhi</option>
                                <option>Gurgaon</option>
                                <option>Hyderabad/Secunderabad</option>
                                <option>Kolkatta</option>
                                <option>Mumbai</option>
                                <option>Noida</option>
                                <option>Pune</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Andhra Pradesh-</i></font></option>
                                <option>Anantapur</option>
                                <option>Guntakal</option>
                                <option>Guntur</option>
                                <option>Hyderabad/Secunderabad</option>
                                <option>kakinada</option>
                                <option>kurnool</option>
                                <option>Nellore</option>
                                <option>Nizamabad</option>
                                <option>Rajahmundry</option>
                                <option>Tirupati</option>
                                <option>Vijayawada</option>
                                <option>Visakhapatnam</option>
                                <option>Warangal</option>
                                <option>Andra Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Arunachal Pradesh-</i></font></option>
                                <option>Itanagar</option>
                                <option>Arunachal Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Assam-</i></font></option>
                                <option>Guwahati</option>
                                <option>Silchar</option>
                                <option>Assam-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Bihar-</i></font></option>
                                <option>Bhagalpur</option>
                                <option>Patna</option>
                                <option>Bihar-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Chhattisgarh-</i></font></option>
                                <option>Bhillai</option>
                                <option>Bilaspur</option>
                                <option>Raipur</option>
                                <option>Chhattisgarh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Goa-</i></font></option>
                                <option>Panjim/Panaji</option>
                                <option>Vasco Da Gama</option>
                                <option>Goa-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Gujarat-</i></font></option>
                                <option>Ahmedabad</option>
                                <option>Anand</option>
                                <option>Ankleshwar</option>
                                <option>Bharuch</option>
                                <option>Bhavnagar</option>
                                <option>Bhuj</option>
                                <option>Gandhinagar</option>
                                <option>Gir</option>
                                <option>Jamnagar</option>
                                <option>Kandla</option>
                                <option>Porbandar</option>
                                <option>Rajkot</option>
                                <option>Surat</option>
                                <option>Vadodara/Baroda</option>
                                <option>Valsad</option>
                                <option>Vapi</option>
                                <option>Gujarat-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Haryana-</i></font></option>
                                <option>Ambala</option>
                                <option>Chandigarh</option>
                                <option>Faridabad</option>
                                <option>Gurgaon</option>
                                <option>Hisar</option>
                                <option>Karnal</option>
                                <option>Kurukshetra</option>
                                <option>Panipat</option>
                                <option>Rohtak</option>
                                <option>Haryana-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Himachal Pradesh-</i></font></option>
                                <option>Dalhousie</option>
                                <option>Dharmasala</option>
                                <option>Kulu/Manali</option>
                                <option>Shimla</option>
                                <option>Himachal Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Jammu and Kashmir-</i></font></option>
                                <option>Jammu</option>
                                <option>Srinagar</option>
                                <option>Jammu and Kashmir-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Jharkhand-</i></font></option>
                                <option>Bokaro</option>
                                <option>Dhanbad</option>
                                <option>Jamshedpur</option>
                                <option>Ranchi</option>
                                <option>Jharkhand-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Karnataka-</i></font></option>
                                <option>Bengaluru/Bangalore</option>
                                <option>Belgaum</option>
                                <option>Bellary</option>
                                <option>Bidar</option>
                                <option>Dharwad</option>
                                <option>Gulbarga</option>
                                <option>Hubli</option>
                                <option>Kolar</option>
                                <option>Mangalore</option>
                                <option>Mysoru/Mysore</option>
                                <option>Karnataka-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Kerala-</i></font></option>
                                <option>Calicut</option>
                                <option>Cochin</option>
                                <option>Ernakulam</option>
                                <option>Kannur</option>
                                <option>Kochi</option>
                                <option>Kollam</option>
                                <option>Kottayam</option>
                                <option>Kozhikode</option>
                                <option>Palakkad</option>
                                <option>Palghat</option>
                                <option>Thrissur</option>
                                <option>Trivandrum</option>
                                <option>Kerela-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Madhya Pradesh-</i></font></option>
                                <option>Bhopal</option>
                                <option>Gwalior</option>
                                <option>Indore</option>
                                <option>Jabalpur</option>
                                <option>Ujjain</option>
                                <option>Madhya Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Maharashtra-</i></font></option>
                                <option>Ahmednagar</option>
                                <option>Aurangabad</option>
                                <option>Jalgaon</option>
                                <option>Kolhapur</option>
                                <option>Mumbai</option>
                                <option>Mumbai Suburbs</option>
                                <option>Nagpur</option>
                                <option>Nasik</option>
                                <option>Navi Mumbai</option>
                                <option>Pune</option>
                                <option>Solapur</option>
                                <option>Maharashtra-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Manipur-</i></font></option>
                                <option>Imphal</option>
                                <option>Manipur-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Meghalaya-</i></font></option>
                                <option>Shillong</option>
                                <option>Meghalaya-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Mizoram-</i></font></option>
                                <option>Aizawal</option>
                                <option>Mizoram-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Nagaland-</i></font></option>
                                <option>Dimapur</option>
                                <option>Nagaland-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Orissa-</i></font></option>
                                <option>Bhubaneshwar</option>
                                <option>Cuttak</option>
                                <option>Paradeep</option>
                                <option>Puri</option>
                                <option>Rourkela</option>
                                <option>Orissa-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Punjab-</i></font></option>
                                <option>Amritsar</option>
                                <option>Bathinda</option>
                                <option>Chandigarh</option>
                                <option>Jalandhar</option>
                                <option>Ludhiana</option>
                                <option>Mohali</option>
                                <option>Pathankot</option>
                                <option>Patiala</option>
                                <option>Punjab-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Rajasthan-</i></font></option>
                                <option>Ajmer</option>
                                <option>Jaipur</option>
                                <option>Jaisalmer</option>
                                <option>Jodhpur</option>
                                <option>Kota</option>
                                <option>Udaipur</option>
                                <option>Rajasthan-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Sikkim-</i></font></option>
                                <option>Gangtok</option>
                                <option>Sikkim-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Tamil Nadu-</i></font></option>
                                <option>Chennai</option>
                                <option>Coimbatore</option>
                                <option>Cuddalore</option>
                                <option>Erode</option>
                                <option>Hosur</option>
                                <option>Madurai</option>
                                <option>Nagerkoil</option>
                                <option>Ooty</option>
                                <option>Salem</option>
                                <option>Thanjavur</option>
                                <option>Tirunalveli</option>
                                <option>Trichy</option>
                                <option>Tuticorin</option>
                                <option>Vellore</option>
                                <option>Tamil Nadu-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Tripura-</i></font></option>
                                <option>Agartala</option>
                                <option>Tripura-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Union Territories-</i></font></option>
                                <option>Chandigarh</option>
                                <option>Dadra & Nagar Haveli-Silvassa</option>
                                <option>Daman & Diu</option>
                                <option>Delhi</option>
                                <option>Pondichery</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Uttar Pradesh-</i></font></option>
                                <option>Agra</option>
                                <option>Aligarh</option>
                                <option>Allahabad</option>
                                <option>Bareilly</option>
                                <option>Faizabad</option>
                                <option>Ghaziabad</option>
                                <option>Gorakhpur</option>
                                <option>Kanpur</option>
                                <option>Lucknow</option>
                                <option>Mathura</option>
                                <option>Meerut</option>
                                <option>Moradabad</option>
                                <option>Noida</option>
                                <option>Varanasi/Banaras</option>
                                <option>Uttar Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Uttaranchal-</i></font></option>
                                <option>Dehradun</option>
                                <option>Roorkee</option>
                                <option>Uttaranchal-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-West Bengal-</i></font></option>
                                <option>Asansol</option>
                                <option>Durgapur</option>
                                <option>Haldia</option>
                                <option>Kharagpur</option>
                                <option>Kolkatta</option>
                                <option>Siliguri</option>
                                <option>West Bengal - Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Other-</i></font></option>
                                <option>Other</option>
</select><br><br>
    
    <%
				// Repopulation of form fields
				String Temp_pincode=(String)request.getAttribute("Temp_pincode");
				if(Temp_pincode==null)
					Temp_pincode="";
					%>
    
        <label for="number">Pin Code:</label>  <br/>  
        <input type="number" class="form-control" placeholder="Present Address Pincode" name="temp-pincode" value="<%=Temp_pincode %>>"><br>
         <!-- Permanent Address -->
          <%
				// Repopulation of form fields
				String Permanent_addr=(String)request.getAttribute("Permanent_addr");
				if(Permanent_addr==null)
					Permanent_addr="";
					%>
        <label for="text">Permanent Address:</label>  <br/>  
        <input type="text" class="form-control" placeholder="Permanent Address" name="Peraddr" value="<%=Permanent_addr %>"><br>
        
        <label for="text">State:</label>  <br/>  
        <select name=perstatelist>
                                <option value="default">------------Select State------------</option>
                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                <option value="Daman and Diu">Daman and Diu</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Lakshadweep">Lakshadweep</option>
                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Orissa">Orissa</option>
                                <option value="Pondicherry">Pondicherry</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Uttaranchal">Uttaranchal</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="West Bengal">West Bengal</option>
</select><br><br>

 <label for="text">City:</label>  <br/>  
<select name=percitylist>
                                <option value="default">------------Select City------------</option>
                                <option>Ahmedabad</option> 
                                <option>Bengaluru/Bangalore</option>
                                <option>Chandigarh</option>
                                <option>Chennai</option>
                                <option>Delhi</option>
                                <option>Gurgaon</option>
                                <option>Hyderabad/Secunderabad</option>
                                <option>Kolkatta</option>
                                <option>Mumbai</option>
                                <option>Noida</option>
                                <option>Pune</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Andhra Pradesh-</i></font></option>
                                <option>Anantapur</option>
                                <option>Guntakal</option>
                                <option>Guntur</option>
                                <option>Hyderabad/Secunderabad</option>
                                <option>kakinada</option>
                                <option>kurnool</option>
                                <option>Nellore</option>
                                <option>Nizamabad</option>
                                <option>Rajahmundry</option>
                                <option>Tirupati</option>
                                <option>Vijayawada</option>
                                <option>Visakhapatnam</option>
                                <option>Warangal</option>
                                <option>Andra Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Arunachal Pradesh-</i></font></option>
                                <option>Itanagar</option>
                                <option>Arunachal Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Assam-</i></font></option>
                                <option>Guwahati</option>
                                <option>Silchar</option>
                                <option>Assam-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Bihar-</i></font></option>
                                <option>Bhagalpur</option>
                                <option>Patna</option>
                                <option>Bihar-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Chhattisgarh-</i></font></option>
                                <option>Bhillai</option>
                                <option>Bilaspur</option>
                                <option>Raipur</option>
                                <option>Chhattisgarh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Goa-</i></font></option>
                                <option>Panjim/Panaji</option>
                                <option>Vasco Da Gama</option>
                                <option>Goa-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Gujarat-</i></font></option>
                                <option>Ahmedabad</option>
                                <option>Anand</option>
                                <option>Ankleshwar</option>
                                <option>Bharuch</option>
                                <option>Bhavnagar</option>
                                <option>Bhuj</option>
                                <option>Gandhinagar</option>
                                <option>Gir</option>
                                <option>Jamnagar</option>
                                <option>Kandla</option>
                                <option>Porbandar</option>
                                <option>Rajkot</option>
                                <option>Surat</option>
                                <option>Vadodara/Baroda</option>
                                <option>Valsad</option>
                                <option>Vapi</option>
                                <option>Gujarat-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Haryana-</i></font></option>
                                <option>Ambala</option>
                                <option>Chandigarh</option>
                                <option>Faridabad</option>
                                <option>Gurgaon</option>
                                <option>Hisar</option>
                                <option>Karnal</option>
                                <option>Kurukshetra</option>
                                <option>Panipat</option>
                                <option>Rohtak</option>
                                <option>Haryana-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Himachal Pradesh-</i></font></option>
                                <option>Dalhousie</option>
                                <option>Dharmasala</option>
                                <option>Kulu/Manali</option>
                                <option>Shimla</option>
                                <option>Himachal Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Jammu and Kashmir-</i></font></option>
                                <option>Jammu</option>
                                <option>Srinagar</option>
                                <option>Jammu and Kashmir-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Jharkhand-</i></font></option>
                                <option>Bokaro</option>
                                <option>Dhanbad</option>
                                <option>Jamshedpur</option>
                                <option>Ranchi</option>
                                <option>Jharkhand-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Karnataka-</i></font></option>
                                <option>Bengaluru/Bangalore</option>
                                <option>Belgaum</option>
                                <option>Bellary</option>
                                <option>Bidar</option>
                                <option>Dharwad</option>
                                <option>Gulbarga</option>
                                <option>Hubli</option>
                                <option>Kolar</option>
                                <option>Mangalore</option>
                                <option>Mysoru/Mysore</option>
                                <option>Karnataka-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Kerala-</i></font></option>
                                <option>Calicut</option>
                                <option>Cochin</option>
                                <option>Ernakulam</option>
                                <option>Kannur</option>
                                <option>Kochi</option>
                                <option>Kollam</option>
                                <option>Kottayam</option>
                                <option>Kozhikode</option>
                                <option>Palakkad</option>
                                <option>Palghat</option>
                                <option>Thrissur</option>
                                <option>Trivandrum</option>
                                <option>Kerela-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Madhya Pradesh-</i></font></option>
                                <option>Bhopal</option>
                                <option>Gwalior</option>
                                <option>Indore</option>
                                <option>Jabalpur</option>
                                <option>Ujjain</option>
                                <option>Madhya Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Maharashtra-</i></font></option>
                                <option>Ahmednagar</option>
                                <option>Aurangabad</option>
                                <option>Jalgaon</option>
                                <option>Kolhapur</option>
                                <option>Mumbai</option>
                                <option>Mumbai Suburbs</option>
                                <option>Nagpur</option>
                                <option>Nasik</option>
                                <option>Navi Mumbai</option>
                                <option>Pune</option>
                                <option>Solapur</option>
                                <option>Maharashtra-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Manipur-</i></font></option>
                                <option>Imphal</option>
                                <option>Manipur-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Meghalaya-</i></font></option>
                                <option>Shillong</option>
                                <option>Meghalaya-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Mizoram-</i></font></option>
                                <option>Aizawal</option>
                                <option>Mizoram-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Nagaland-</i></font></option>
                                <option>Dimapur</option>
                                <option>Nagaland-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Orissa-</i></font></option>
                                <option>Bhubaneshwar</option>
                                <option>Cuttak</option>
                                <option>Paradeep</option>
                                <option>Puri</option>
                                <option>Rourkela</option>
                                <option>Orissa-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Punjab-</i></font></option>
                                <option>Amritsar</option>
                                <option>Bathinda</option>
                                <option>Chandigarh</option>
                                <option>Jalandhar</option>
                                <option>Ludhiana</option>
                                <option>Mohali</option>
                                <option>Pathankot</option>
                                <option>Patiala</option>
                                <option>Punjab-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Rajasthan-</i></font></option>
                                <option>Ajmer</option>
                                <option>Jaipur</option>
                                <option>Jaisalmer</option>
                                <option>Jodhpur</option>
                                <option>Kota</option>
                                <option>Udaipur</option>
                                <option>Rajasthan-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Sikkim-</i></font></option>
                                <option>Gangtok</option>
                                <option>Sikkim-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Tamil Nadu-</i></font></option>
                                <option>Chennai</option>
                                <option>Coimbatore</option>
                                <option>Cuddalore</option>
                                <option>Erode</option>
                                <option>Hosur</option>
                                <option>Madurai</option>
                                <option>Nagerkoil</option>
                                <option>Ooty</option>
                                <option>Salem</option>
                                <option>Thanjavur</option>
                                <option>Tirunalveli</option>
                                <option>Trichy</option>
                                <option>Tuticorin</option>
                                <option>Vellore</option>
                                <option>Tamil Nadu-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Tripura-</i></font></option>
                                <option>Agartala</option>
                                <option>Tripura-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Union Territories-</i></font></option>
                                <option>Chandigarh</option>
                                <option>Dadra & Nagar Haveli-Silvassa</option>
                                <option>Daman & Diu</option>
                                <option>Delhi</option>
                                <option>Pondichery</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Uttar Pradesh-</i></font></option>
                                <option>Agra</option>
                                <option>Aligarh</option>
                                <option>Allahabad</option>
                                <option>Bareilly</option>
                                <option>Faizabad</option>
                                <option>Ghaziabad</option>
                                <option>Gorakhpur</option>
                                <option>Kanpur</option>
                                <option>Lucknow</option>
                                <option>Mathura</option>
                                <option>Meerut</option>
                                <option>Moradabad</option>
                                <option>Noida</option>
                                <option>Varanasi/Banaras</option>
                                <option>Uttar Pradesh-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Uttaranchal-</i></font></option>
                                <option>Dehradun</option>
                                <option>Roorkee</option>
                                <option>Uttaranchal-Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-West Bengal-</i></font></option>
                                <option>Asansol</option>
                                <option>Durgapur</option>
                                <option>Haldia</option>
                                <option>Kharagpur</option>
                                <option>Kolkatta</option>
                                <option>Siliguri</option>
                                <option>West Bengal - Other</option>
                                <option disabled="disabled" style="background-color:#3E3E3E"><font color="#FFFFFF"><i>-Other-</i></font></option>
                                <option>Other</option>
</select><br><br>
        <%
				// Repopulation of form fields
				String Permanent_pin=(String)request.getAttribute("Permanent_pin");
				if(Permanent_pin==null)
					Permanent_pin="";
					%>
        <label for="number">Pin Code:</label>  <br/>  
        <input type="number" class="form-control" placeholder="Permanent Address pincode" name="perpincode" value="<%=Permanent_pin %>>"><br>
       
        <label for="name">Do You have valid documentation for the product</label> <br>
       
                <select name="DocVer">
                      <option value="default">Select</option>        
                      <option value="yes">yes</option>
                      <option value="no">No</option>

                </select> <br><br>     
        
        <label for="email">email-id</label>  <br/>  
        <input type="email" class="form-control" placeholder="email Id" name="email"><br>
        
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd"><br>
        
        <label for="pwd">Retype Password:</label>
        <input type="password" class="form-control" id="pwd" placeholder="Re-Enter password" name="Re-pwd">
        
        <label for="number">Contact Number</label>  <br/>  
        <input type="Number" class="form-control" placeholder="Contact  number" maxlength="10" name="number"><br>
        
         
        
        
            <a href="signup.jsp"><button class="button button4" type="reset">RESET</button></a>
            <button  class="button button4" type="submit" >REGISTER</button>
            <a href="pawnshopfrontpage.jsp"><button  class="button button4" type="reset" >HOME</button></a>
                    </div> </form>
         </div>
    </div>
    </body></html>
   
