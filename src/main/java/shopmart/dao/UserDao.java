package shopmart.dao;

import shopmart.models.User;
import java.sql.*;

public class UserDao{
	Connection connection = null;
	
	public boolean connect() {
		String jdbcURL = "jdbc:postgresql://ec2-52-72-56-59.compute-1.amazonaws.com:5432/db6cov4baqcn1j";
		String username = "mqcztobfkzlmcp";
		String password = "67aa18559afb602ff8bd405a5e7dbca42a795456bfbdf551a20fe7fa655f6ff7";
		
		try {
			connection = DriverManager.getConnection(jdbcURL, username, password);
		} catch (SQLException e) {return false;}
		return true;
	}
	
	public User getUser(String email) {
		User user = new User();
		try{
			String query = "SELECT * FROM \"user\" WHERE email='" + email + "';";
	        Statement statement = connection.createStatement();
	        ResultSet result = statement.executeQuery(query);
	        
	        if (result.next()) {
	        	user.setEmail(result.getString("email"));
	        	user.setName(result.getString("name"));
	        	user.setPassword(result.getString("password"));
	        }
		} catch (Exception e) {return null;}
		return user;
	}
	
	public boolean registerUser(User user) {	
		try{
			if(getUser(user.getEmail).getEmail().equals(""))
			{
				
			String query = "INSERT INTO \"user\" VALUES (?, ?, ?);";
	        PreparedStatement statement = connection.prepareStatement(query);
	        statement.setString(1, user.getEmail());
	        statement.setString(2, user.getName());
	        statement.setString(3, user.getPassword());
	        statement.executeUpdate();
	        }
			else
			return false;

		} catch (Exception e) {
			//return false;
		}
		return true;
	}
}
