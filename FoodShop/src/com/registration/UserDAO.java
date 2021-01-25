package com.registration;
import java.sql.*;

//Import Database Connection Class file 
import code.DatabaseConnection; 
public class UserDAO {
	public User checkLogin(String email, String password) throws SQLException, ClassNotFoundException {
		Connection con = DatabaseConnection.initializeDatabase();
		String sql = "SELECT * FROM SignUp WHERE Email = ? and password = ?";
	    PreparedStatement statement = con.prepareStatement(sql);
	    statement.setString(1, email);
	    statement.setString(2, password);
	
	    ResultSet result = statement.executeQuery();
	
	    User user = null;
	
	    if (result.next()) {
	        user = new User();
	        user.setFullname(result.getString("Username"));
	        user.setEmail(email);
	    }
	
	    con.close();
	
	    return user;
	}
}
