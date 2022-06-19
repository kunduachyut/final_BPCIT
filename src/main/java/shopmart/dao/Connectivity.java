package shopmart.dao;

import java.sql.*;

public class Connectivity{
    public Connection connect() throws Exception {
		Connection connection = null;
		String jdbcURL = "jdbc:postgresql://ec2-52-72-56-59.compute-1.amazonaws.com:5432/db6cov4baqcn1j";
		String username = "mqcztobfkzlmcp";
		String password = "67aa18559afb602ff8bd405a5e7dbca42a795456bfbdf551a20fe7fa655f6ff7";
		connection = DriverManager.getConnection(jdbcURL, username, password);
		
		return connection ;
	}
}

