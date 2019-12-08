package com.calc.vehicle;

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
 * Servlet implementation class vahicleCalc
 */
@WebServlet("/vahicleCalc")
public class vahicleCalc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String VehicleType=request.getParameter("vehicleType").trim();
	String ModelNum=request.getParameter("modelnumber").trim();
	String YearP=request.getParameter("year").trim();
	String str=request.getParameter("Rupees");
	System.out.println("year"+YearP);
	System.out.println("rupees"+str);
	System.out.println("model number"+ModelNum);
	System.out.println("vehicletype"+VehicleType);
	
	if(VehicleType.equals("default"))
	{
		request.setAttribute("error1","*Vehicle Type" );
		request.setAttribute("VehicleType",VehicleType);

		RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
		rd.forward(request, response);
	} 
	if(ModelNum=="")
	{
		request.setAttribute("error2","*Model Number" );
		request.setAttribute("ModelNum",ModelNum);

		RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
		rd.forward(request, response);
	} if(str=="")
	{
		request.setAttribute("error4","*Enter the Price" );	
		request.setAttribute("price",str);

		RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
		rd.forward(request, response);
	}
	if( YearP=="") {
		request.setAttribute("error3","*Year" );
		request.setAttribute("YearP",YearP);
		RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
		rd.forward(request, response);
	}
	int price=0;
	try {
	if(str!=null)
		
	    price=Integer.parseInt(str);
	}catch (NumberFormatException e) {
		price=0;
	}
/*	if(VehicleType==null || ModelNum==null || price==0 || YearP==null||YearP=="") {
		request.setAttribute("error1","*Vehicle Type" );
		request.setAttribute("error2","*Model Number" );
		request.setAttribute("error3","*Year" );
		request.setAttribute("error4","*Enter the Price" );
		request.setAttribute("VehicleType",VehicleType );
		request.setAttribute("ModelNum",ModelNum);
		String pricemoney=Integer.toString(price);
		request.setAttribute("price",pricemoney);
		request.setAttribute("YearP",YearP);
		RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
		rd.forward(request, response);
	} */
	//setting input date format to only year
	SimpleDateFormat sdf=new SimpleDateFormat("YYYY");
	Date date=new Date();
	int useryear=Integer.parseInt(YearP);
	String sysdate;
	sysdate=sdf.format(date);
	int systemyear=Integer.parseInt(sysdate);
	System.out.println(sysdate);
	System.out.print(YearP);
	
	//difference between userdate and systemdate
	
	int diff=systemyear-useryear;
	System.out.println(diff);
if(diff<0) {
	request.setAttribute("error5","*Enter valid date" );
	RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
	rd.forward(request, response);
}
 double fp=0;
/*	vehicleCalc vc=new vehicleCalc();
	
	ArrayList<Object> li=new ArrayList<Object>();
	ArrayList<Object> lia=new ArrayList<Object>();
	*/
	for(int i=0;i<=diff;i++)
	{ System.out.println("inside for loop");
	//price = (int) (price -( price*0.05));
	price=(int)Math.abs(price-(price*0.05));
	fp=price;
	System.out.println("value"+fp);
	}
	
	System.out.println("you can apply upto"+fp);
	//li.add(fp);
	String fpp=Double.toString(fp);
	request.setAttribute("pricepay",fpp);
	//simple interest 
	double SimpleInterest=Math.abs(((fp*20*12)/100)/12);
	System.out.println("EveryMonth You have to pay"+SimpleInterest);
	//lia.add(SimpleInterest);
	String SIP=Double.toString(SimpleInterest);
	request.setAttribute("SI", SIP);

	//if(!li.isEmpty()&&(!lia.isEmpty())) {
		
	
		
		
		System.out.println("taken input");
		RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
		rd.forward(request, response);
		//return;
	}
	}
//}
/*
	
	}
	RequestDispatcher rd=request.getRequestDispatcher("/Faillogin");
	rd.forward(request, response);
	
	}
}*/
   		