package listener;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ConnectionDBListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Statement s = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/root", "root", "");
            s = c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);

            sce.getServletContext().setAttribute("ECUS", s);
            System.out.println("listener done");

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException ex) {
            System.out.println("not found CLASS");
        }

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
