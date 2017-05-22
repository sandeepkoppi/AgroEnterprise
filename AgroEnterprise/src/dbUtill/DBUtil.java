/*
 * Decompiled with CFR 0_114.
 */
package dbUtill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtil {
    static Connection con = null;
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        System.out.println("in dbUtill");
        Class.forName("com.mysql.jdbc.Driver");
        con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/sandeep133","root", "sandeep133");
       if (con == null) {
            System.out.println("Connection successfull");
        } else {
            System.out.println("Connection failed");
        }
        return con;
    }

    public static void closeConnection(Connection con, PreparedStatement ps) {
        try {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }
        catch (Exception var2_2) {
            // empty catch block
        }
    }

    public static void closeConnection(Connection conn) {
        if (con != null) {
            try {
                con.close();
            }
            catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
