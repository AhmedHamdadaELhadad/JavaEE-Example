package Servlet;

import data.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        //get data 
        String name = request.getParameter("user");
        String password = request.getParameter("password");

        Statement s = null;
        ResultSet r = null;

        try {

            s = (Statement) getServletContext().getAttribute("ECUS");

            r = s.executeQuery("select *from CUSTOMER where USERNAME like" + "'" + name + "' " + "and PASSWORD like" + "'" + password + "' ");
            if (r.next()) {
                Customer cus = new Customer();
                cus.setId(r.getInt("ID"));
                cus.setName(r.getString("USERNAME"));
                request.getSession().setAttribute("cus", cus);
                RequestDispatcher rd = request.getRequestDispatcher("Welcome");
                rd.forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet LoginServlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Servlet LoginServlet at " + "</h1>");
        out.println("</body>");
        out.println("</html>");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
