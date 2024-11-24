package createevent.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import createevent.model.User;

public class UserDAO {
	
	 private String jdbcURL = "jdbc:mysql://localhost:3306/demo1?useSSL=false";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "abcd1234";
	
	
	    private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (name, email, mobilenumber,eventdetails,payment) VALUES " +
		        " (?, ?, ? , ?, ?);";
	
	    private static final String SELECT_USER_BY_ID = "select id,name,email,mobilenumber,eventdetails,payment from users where id =?";
	    private static final String SELECT_ALL_USERS = "select * from users";
	    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
	    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, mobilenumber= ?,eventdetails= ?,payment= ? where id = ?;";
	    
	    
	    
	    public UserDAO() {}

	    protected Connection getConnection() {
	        Connection connection = null;
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return connection;
	    }

	    public void insertUser(User user) throws SQLException {
	        System.out.println(INSERT_USERS_SQL);
	       
	        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setString(1, user.getName());
	            preparedStatement.setString(2, user.getEmail());
	            preparedStatement.setString(3, user.getMobilenumber());
	            preparedStatement.setString(4, user.getEventdetails());
	            preparedStatement.setString(5, user.getPayment());
	            System.out.println(preparedStatement);
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	    }

	    public User selectUser(int id) {
	        User user = null;
	       
	        try (Connection connection = getConnection();
	           
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
	            preparedStatement.setInt(1, id);
	            System.out.println(preparedStatement);
	           
	            ResultSet rs = preparedStatement.executeQuery();

	            
	            while (rs.next()) {
	                String name = rs.getString("name");
	                String email = rs.getString("email");
	                String mobilenumber = rs.getString("mobilenumber");
	                String eventdetails = rs.getString("eventdetails");
	                String payment = rs.getString("payment");
	                 
	                user = new User(id, name, email, mobilenumber,eventdetails,payment);
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return user;
	    }

	    public List < User > selectAllUsers() {

	        
	        List < User > users = new ArrayList < > ();
	        
	        try (Connection connection = getConnection();

	           
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
	            System.out.println(preparedStatement);
	           
	            ResultSet rs = preparedStatement.executeQuery();

	            
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String name = rs.getString("name");
	                String email = rs.getString("email");
	                String mobilenumber = rs.getString("mobilenumber");
	                String eventdetails = rs.getString("eventdetails");
	                String payment = rs.getString("payment");
	                
	                users.add(new User(id, name, email, mobilenumber,eventdetails,payment));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return users;
	    }

	    public boolean deleteUser(int id) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
	            statement.setInt(1, id);
	            rowDeleted = statement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }

	    public boolean updateUser(User user) throws SQLException {
	        boolean rowUpdated;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
	            statement.setString(1, user.getName());
	            statement.setString(2, user.getEmail());
	            statement.setString(3, user.getMobilenumber());
	            statement.setString(4, user.getEventdetails());
	            statement.setString(5, user.getPayment());
	            
	            statement.setInt(6, user.getId());

	            rowUpdated = statement.executeUpdate() > 0;
	        }
	        return rowUpdated;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }

}