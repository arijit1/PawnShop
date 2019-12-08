package com.deposit;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deposit
 */
@WebServlet("/deposit")
public class deposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SimpleDateFormat sdf=new SimpleDateFormat("YYYY");
		String MF=request.getParameter("depositType").trim();
		String SQft=request.getParameter("area");
		String YearP=request.getParameter("date");
		
		String initialprice=request.getParameter("Rupees");
		String finalprice=request.getParameter("PresentRupees");
		request.setAttribute("depositType", MF);
		request.setAttribute("SQft",SQft);
		request.setAttribute("Year", YearP);
		request.setAttribute("Irupees", initialprice);
		request.setAttribute("finalprice", finalprice);
		 
		System.out.println(MF+","+SQft+","+YearP+","+initialprice+","+finalprice);
		
		if(MF==null||SQft==""||YearP==null||initialprice==""||finalprice==null)
		{
			request.setAttribute("error1", "*Deposit Type");
			request.setAttribute("error2", "*Area");
			request.setAttribute("error3", "*Date");
			request.setAttribute("error4", "*price");
			request.setAttribute("error5", "*price");
			RequestDispatcher rd=request.getRequestDispatcher("/Deposit-type.jsp");
			rd.forward(request, response);
			return;
		}
		
		Date date=new Date();
		String sysdate=sdf.format(date);
		
		int systemyear=Integer.parseInt(sysdate);
		
		
		
	//casting String type year to integer
		int myear=Integer.parseInt(YearP);
		int diff=systemyear-myear;
		if(diff<0) {
			request.setAttribute("error6", "enter valid date");
			RequestDispatcher rd=request.getRequestDispatcher("/Deposit-type.jsp");
			rd.forward(request, response);
			return;
		}
		int finprice=Integer.parseInt(finalprice);
		int Iprice=Integer.parseInt(initialprice);
		int Area=Integer.parseInt(SQft);//casting String type SQft to integer
		double fprice=0;
		double price=finprice-Iprice;
		if(MF.equalsIgnoreCase("MutualFund"))
		{
			for(int i=0;i<=diff;i++)
			{
			double price1=Math.abs(price-(price*0.20));
			fprice=price1;
			}
			double SimpleInterest=Math.abs(((fprice*20*12)/100)/12);
			double TotalSimpleInterest=SimpleInterest*12;
			String str=Double.toString(fprice);
			String str1=Double.toString(SimpleInterest);
			String str2=Double.toString(TotalSimpleInterest);
			request.setAttribute("ApplicableLoan", str);
			request.setAttribute("SI", str1);
			request.setAttribute("TSI", str2);
			RequestDispatcher rd=request.getRequestDispatcher("/Deposit-type.jsp");
			rd.forward(request, response);
			return;
		}
		if(MF.equalsIgnoreCase("bondpaper")) 
		{
			for(int i=0;i<=diff;i++)
			{
			double price1=Math.abs(price-(price*0.30));
			fprice=price1;
			}
			double SimpleInterest=Math.abs(((fprice*20*12)/100)/12);
			double TotalSimpleInterest=SimpleInterest*12;
			String str=Double.toString(fprice);
			String str1=Double.toString(SimpleInterest);
			String str2=Double.toString(TotalSimpleInterest);
			request.setAttribute("ApplicableLoan", str);
			request.setAttribute("SI", str1);
			request.setAttribute("TSI", str2);
			RequestDispatcher rd=request.getRequestDispatcher("/Deposit-type.jsp");
			rd.forward(request, response);
			return;
		}
		if(MF.equalsIgnoreCase("FD")) 
		{
			for(int i=0;i<=diff;i++)
			{
			double price1=Math.abs(price-(price*0.10));
			fprice=price1*(Area*0.5);
			}
			String str=Double.toString(fprice);
			//calculating SimpleInterest
			double SimpleInterest=Math.abs(((fprice*20*12)/100)/12);
			double TotalSimpleInterest=SimpleInterest*12;
			String str1=Double.toString(SimpleInterest);
			String str2=Double.toString(TotalSimpleInterest);
			request.setAttribute("ApplicableLoan", str);
			request.setAttribute("SI", str1);
			request.setAttribute("TSI", str2);
			
			RequestDispatcher rd=request.getRequestDispatcher("/Deposit-type.jsp");
			rd.forward(request, response);
			return;
		}
	}

}