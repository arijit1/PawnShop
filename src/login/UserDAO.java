package login;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
Connection con;
PreparedStatement pst;
ResultSet rs;
public UserDAO() {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pawnshop", "root", "root");
	}
	catch(ClassNotFoundException c) {}
	catch(SQLException s) {}
	}
/*
public boolean checkUser(String u, String p) {
	String sql="select first_name from mortgage where email_id=? and passwords=?";
	try {
		pst=con.prepareStatement(sql);
		pst.setString(1, u);
		pst.setString(2, p);
		rs=pst.executeQuery();
		if(rs.next())
			return true;
	}
	catch(SQLException s) {}
	return false;
}*/
	
public String getUser(String e, String p) {
	String sql="select First_Name from mortgage where email_id=? and passwords=?";
	try {
		pst=con.prepareStatement(sql);
		pst.setString(1, e);
		pst.setString(2, p);
		rs=pst.executeQuery();
		if(rs.next())
			return rs.getString("First_Name");
	}
	catch(SQLException s) {}
	return "";
}
	
}
