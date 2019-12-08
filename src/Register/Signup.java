package Register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String First_name=request.getParameter("fname").trim();
	String Last_name=request.getParameter("lname").trim();
	String gender=request.getParameter("gender").trim();
	String Docverify=request.getParameter("DocVer").trim();
	String email=request.getParameter("email").trim();
	String passwords=request.getParameter("pwd").trim();
	String Re_password=request.getParameter("Re-pwd").trim();
	String Contact_number=request.getParameter("number").trim();
	String mortgageType=request.getParameter("typeMortgage").trim();
	String productType=request.getParameter("Product").trim();
	String tempAddr=request.getParameter("temp-addr").trim();
	String tempstate=request.getParameter("tempstatelist").trim();
	String tempcity=request.getParameter("tempcitylist").trim();
	String temppincode=request.getParameter("temp-pincode").trim();
	String permanentaddr=request.getParameter("Peraddr").trim();
	String permanentstate=request.getParameter("perstatelist").trim();
	String permanentcity=request.getParameter("percitylist").trim();
	String permanentpincode=request.getParameter("perpincode").trim();
	List li=new ArrayList();
	
	if(First_name.length()<1) 
	{
		li.add("First name can't left blank");
	}
	if(Last_name.length()<1) 
	{
		li.add("Last name can't left blank");
	}
	if(gender.equals("default")) 
	{
		li.add("Select  Gender");
	}
	if(Docverify.equals("default"))
	{
		li.add("Verification details not entered");
	}
	if(passwords.length()<1)
    	{
		li.add("password  cannot be left blank");
    	}
    if(passwords.length()<5)
    {
    	li.add("weak password");
    }
    if(Re_password.length()<1)
    {
    	li.add("Repassword cannot be left blank");
    }
    if(Contact_number.length()<10)
    {
    	li.add("Enter valid number");
    }
    if(mortgageType.equals("default")) 
    {
    	li.add("Mortgage Type not entered");
    }
    if(productType.length()<3) {
    	li.add("Please specify mortgage Type");
    }
    if(tempAddr.length()<4) {
    	li.add("temprorary is address empty");
    }
    if(tempstate.equals("default"))
    {
    	li.add("Present State is not selected");
    }
    if(tempcity.equals("default"))
    {
    	li.add("present city is not selected");
    }
    if(temppincode.length()<5)
    {
    	li.add("present pincode is empty");
    }
    if(permanentaddr.length()<2) 
    {
    	li.add("In Valid Address");
    }
    if(permanentcity.equals("default"))
    {
    	li.add("Select present city");
    }
    if(permanentpincode.length()<5)
    {
    	li.add("permanent pincode must be more than 5 digit");
    }
    if(permanentstate.equals("default"))
    {
    	li.add("select present state");
    }
   // if(passwords!=Re_password)
    //{
    //	li.add("Password did not matched ");
    //}
   
    
    if(!li.isEmpty())
    {      System.out.println("is not empty");
    	request.setAttribute("error",li);
    	request.setAttribute("Firstname", First_name);
    	request.setAttribute("Lastname", Last_name);
    	request.setAttribute("MortgageType", mortgageType);
    	request.setAttribute("Temp_addr", tempAddr);
    	request.setAttribute("Temp_pincode", temppincode);
    	request.setAttribute("Permanent_addr", permanentaddr);
    	request.setAttribute("Permanent_pin", permanentpincode);
    	request.setAttribute("ProductType", productType);
    	System.out.println(li);
    	RequestDispatcher rd=request.getRequestDispatcher("/signup.jsp");
    	rd.forward(request, response);
    return;
    }
    try {
		Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pawnshop", "root", "root");
	
	String sql="insert into Mortgage(First_name,Last_name,gender,Docverify,passwords,Contact_number,email_id"
			+ ",mortgage_type,product_type,present_address,present_state,present_city,present_pincode,"
			+ "permanent_address,per_address,per_state,per_city"
			+ ",per_pincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	System.out.println(First_name);
	System.out.println("running");
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1,First_name);
	pst.setString(2,Last_name);
		pst.setString(3,gender);
	pst.setString(4,Docverify);
	pst.setString(5,passwords);
    pst.setString(6,Contact_number);
    pst.setString(7,email);
	pst.setString(8, mortgageType);
	pst.setString(9, productType);
	pst.setString(10, tempAddr);
	pst.setString(11, tempstate);
	pst.setString(12, tempcity);
	pst.setString(13, temppincode);
	pst.setString(14, permanentaddr);
	pst.setString(15, permanentaddr);
	pst.setString(16, permanentstate);
	pst.setString(17, permanentcity);
	pst.setString(18, permanentpincode);
	int res=pst.executeUpdate();
if(res>1)
{
	System.out.println(res+" rows have been added");
}
	}catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	//System.out.println("exception");
		e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	
		request.setAttribute("Firstname", First_name);
		RequestDispatcher rd=request.getRequestDispatcher("/getStarted.jsp");
		rd.forward(request, response);
	}

	

}
