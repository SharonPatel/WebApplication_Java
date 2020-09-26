/*
 * Name: Sharon Patel
 * Student Id: 991503002
 * System10199 - Web Programming
 */
package product.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Sharon
 */
public class userDB {
    private static String driver = "com.mysql.jdbc.Driver";
    private static String url;
    private static String username;
    private static String password;
    
    // private member variable to hold the connection
    private static Connection conn = null;

    
    public userDB(String url, String username, String pwd) {
        this.url = url;
        this.username = username;
        this.password = pwd;
    }
       public static void createConnection() {
        try {
            Class.forName(driver);
            // get the connection from the DriverManager
            conn = DriverManager.getConnection(userDB.url, 
                                userDB.username, userDB.password);
        } catch (ClassNotFoundException e) {
            System.err.println("ClassNotFoundException: " + 
                    e.getMessage());
        } catch (SQLException e) {
            System.err.println("SQLException: " + e.getSQLState());
            System.err.println("SQLException: " + e.getErrorCode());
            System.err.println("SQLException: " + e.getMessage());
        }
    }
}
