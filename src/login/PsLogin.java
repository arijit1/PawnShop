package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.UserDAO;

/**
 * Servlet implementation class PsLogin
 */
@WebServlet("/PsLogin")
public class PsLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	
String email=request.getParameter("email").trim();
String pwd=request.getParameter("pwd").trim();
UserDAO ud=new UserDAO();
String fnm=ud.getUser(email, pwd);
System.out.println(fnm);
HttpSession ses=request.getSession();
if(!fnm.isEmpty()) {
	ses.setAttribute("fnm", fnm);
	request.getRequestDispatcher("pawnshopfrontpage.jsp").forward(request, response);
	return;
}
response.sendRedirect("loginpawnshop.jsp");

} 
}