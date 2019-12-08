package com.contact;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contact
 */
@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String comment=request.getParameter("comments");
		System.out.println(name);
		System.out.println(email);
		System.out.println(comment);
		
		
	
	 try {
			Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pawnshop", "root", "root");
		
		String sql="insert into feedback(_Name,email,comments) values(?,?,?)";
		
		System.out.println("running");
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1,name);
		pst.setString(2,email);
		pst.setString(3,comment);
		
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
		
			request.setAttribute("result", "Submitted");
			RequestDispatcher rd=request.getRequestDispatcher("/contactus.jsp");
			rd.forward(request, response);
		}

		

	}

	


