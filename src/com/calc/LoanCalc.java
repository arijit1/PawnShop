package com.calc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoanCalc")
public class LoanCalc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String Mortgage_type=request.getParameter("mortgagetype").trim();
		System.out.println(Mortgage_type);
if (Mortgage_type.equals("vehicle"))
	{
		RequestDispatcher rd=request.getRequestDispatcher("/vehicle.jsp");
    	rd.forward(request, response);
    	return;
	}
if(Mortgage_type.equals("GnO")) {
	RequestDispatcher rd=request.getRequestDispatcher("/Gold And Ornaments.jsp");
	rd.forward(request, response);
	return;	}
if(Mortgage_type.equals("Deposit")) {
	RequestDispatcher rd1=request.getRequestDispatcher("/Deposit-type.jsp");
	rd1.forward(request, response);
	return;
}

RequestDispatcher rd1=request.getRequestDispatcher("/LoanCalc.jsp");
rd1.forward(request, response);

}	

}
