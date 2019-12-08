package com.calc.Ornament;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ornament
 */
@WebServlet("/ornament")
public class ornament extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Country=request.getParameter("country");
		String caratt=request.getParameter("carat");
		String OrnmntType=request.getParameter("ornamentType");
		String duration=request.getParameter("year");
		System.out.println("country"+Country);
System.out.println("carat"+caratt);
System.out.println("ornament type"+OrnmntType);
System.out.println("duration year"+duration);


		if(duration==""||Country==""||OrnmntType.equals("default")||caratt=="") {
			request.setAttribute("error1","*Enter Year" );
			request.setAttribute("error2","*Enter Country" );
			request.setAttribute("error3","*Ornament Type" );
			request.setAttribute("error4","*Carat" );
			RequestDispatcher rd=request.getRequestDispatcher("/Gold And Ornaments.jsp");
			rd.forward(request, response);
			return;
		}
		String str=request.getParameter("Rupees");
		String wght=request.getParameter("weight");
		System.out.println("rupees"+str);
		System.out.println("weight"+wght);
		
		if(str==""||wght=="")
		{   request.setAttribute("error6","*Price" );
			request.setAttribute("error7","*Weight" );
			RequestDispatcher rd=request.getRequestDispatcher("/Gold And Ornaments.jsp");
			rd.forward(request, response);
			return;
		}
		
		int price=0,weight=0;
		
		try {
			if(wght!=null) {
			weight=Integer.parseInt(wght);
			}
		}catch (NumberFormatException e) {
			weight=0;
		}
		try {
			if(str!=null) {
			price=Integer.parseInt(str);
			}
		}catch (NumberFormatException e) {
			price=0;
		}
			float purity=0;
			try {
				if(caratt!=null) {
				purity=Integer.parseInt(caratt);
				}
			}catch (NumberFormatException e) {
				purity=0;
			}
		
		int useryear=0;
		try {
			if(duration!=null) 
			{
			useryear=Integer.parseInt(duration);
			}
		}
		catch (NumberFormatException e)
		{
			useryear=0;
		}
									//casting string type duration to 
									//integer type and storing in another 
									//variable of integer type
		SimpleDateFormat sdft=new SimpleDateFormat("YYYY");
		Date date=new Date();
		String sysdate;
		sysdate=sdft.format(date);
									//casting String type sysdate to integer type
		int systemyear=Integer.parseInt(sysdate);
									//difference between userdate and systemdate
		int diff=systemyear-useryear;
		if(diff<0||diff==2018)
		{   request.setAttribute("error5","*Enter a valid Date" );
			RequestDispatcher rde=request.getRequestDispatcher("/Gold And Ornaments.jsp");
			rde.forward(request, response);	
			return;
		}
		System.out.println("It is "+diff+" years old ");
		System.out.println(OrnmntType);
		double finalmoney;
		String nocountry=null, strp=null;
		System.out.println(OrnmntType);
		System.out.println(purity);
		System.out.println(price);
		System.out.println(weight);
		System.out.println(Country);
		System.out.println(caratt);
		
		if(diff<0||price==0||weight==0||purity==0)
		{   request.setAttribute("error6","*Price" );
			request.setAttribute("error7","*Weight" );
			request.setAttribute("error8","*Enter Correct Purity" );
			
			RequestDispatcher rd=request.getRequestDispatcher("/Gold And Ornaments.jsp");
			rd.forward(request, response);
			return;
		}
	  
	  if(OrnmntType.equals("gold")) 
		{ 
			System.out.println("GOLD"); 
			if(Country.equalsIgnoreCase("india"))
			{ 
				System.out.println("india"); 
				if(purity<22) 
				{
					finalmoney=3229.95*weight;
					double finalmoney2 = finalmoney-(finalmoney*0.40);
					double SimpleInterest=Math.abs(((finalmoney2*20*12)/100)/12);
					System.out.println(finalmoney);
					System.out.println("finalmoney2"+finalmoney2);
					System.out.println("simple interest"+SimpleInterest);
					String fpp=Double.toString(finalmoney);
					request.setAttribute("Price", fpp);
					request.setAttribute("SI", SimpleInterest);
					RequestDispatcher rdf=request.getRequestDispatcher("/Gold And Ornaments.jsp");
					rdf.forward(request, response);
					return;
				}	
					else
					{ 
						finalmoney=3020.0*weight;
						finalmoney=finalmoney-(finalmoney*0.40);
						double SimpleInterest=Math.abs(((finalmoney*20*12)/100)/12);
						String fpp=Double.toString(finalmoney);
						request.setAttribute("Price", fpp);
						request.setAttribute("SI", SimpleInterest);
						RequestDispatcher rdf=request.getRequestDispatcher("/Gold And Ornaments.jsp");
						rdf.forward(request, response);
					 return;
					 }
				} 
			 if(Country.equals("australia"))
			{
				if(purity<22) 
				{
					finalmoney=2363.13*weight;
					finalmoney=finalmoney-(finalmoney*0.40);
					double SimpleInterest=Math.abs(((finalmoney*20*12)/100)/12);
					String fpp=Double.toString(finalmoney);
					request.setAttribute("Price", fpp);
					request.setAttribute("SI", SimpleInterest);
					RequestDispatcher rdf=request.getRequestDispatcher("/Gold And Ornaments.jsp");
					rdf.forward(request, response);
					return;
				}
				else
				{
					finalmoney=2835.76*weight;
					finalmoney=finalmoney-(finalmoney*0.40);
					double SimpleInterest=Math.abs(((finalmoney*20*12)/100)/12);
					String fpp=Double.toString(finalmoney);
					request.setAttribute("Price", fpp);
					request.setAttribute("SI", SimpleInterest);
					RequestDispatcher rdf=request.getRequestDispatcher("/Gold And Ornaments.jsp");
					rdf.forward(request, response);
					return;
				}
			}
			 
			 }
		
	}
	
}
