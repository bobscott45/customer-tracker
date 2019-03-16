package dev.bobscott.customertracker.testdb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;

@WebServlet(value="/testdb")
public class TestDbServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = "springstudent";
        String password = "springstudent";
        String url = "jdbc:mysql://localhost:3306/web_customer_tracker";
        String driver = "com.mysql.cj.jdbc.Driver";

        try {
            Class.forName(driver);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }

        try {
            DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }

        response.getWriter().println("DB connection " + url + " OK");
    }
}
