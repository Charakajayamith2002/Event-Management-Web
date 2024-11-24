package next.xadmin.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import next.xadmin.login.bean.LoginBean;

public class LoginDao {

    private String dbUrl = "jdbc:mysql://localhost:3306/demo1";
    private String dbUname = "root";
    private String dbPassword = "abcd1234";
    private String dbDriver = "com.mysql.jdbc.Driver";

    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    public boolean validate(LoginBean loginBean) {
        boolean status = false;

        loadDriver(dbDriver);
        Connection con = getConnection();

        if (con != null) {
            String sql = "SELECT * FROM login WHERE username = ? AND password = ?";
            PreparedStatement ps;
            try {
                ps = con.prepareStatement(sql);
                ps.setString(1, loginBean.getUsername());
                ps.setString(2, loginBean.getPassword());
                ResultSet rs = ps.executeQuery();
                status = rs.next();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }
}
