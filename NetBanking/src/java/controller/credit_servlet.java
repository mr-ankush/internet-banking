package controller;
import dao.AccountDAO;
import dao.StatementDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Statement;
@MultipartConfig(maxFileSize = 16177215)          // 16MB Data
public class credit_servlet extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>URL Shorter</title>");
            out.println("<link rel=\"icon\" href='http://www.urllive.in:8084/UrlLive/assets/img/favicon.png'/>");
            out.println("</head>");
            out.println("<body>");
            String username=null;
            username = request.getParameter("username");
            if(username!=null)
            {
                session.setAttribute("username",username);
                //out.println(mobile);
                response.sendRedirect("credit.jsp");
            }
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            Logger.getLogger(credit_servlet.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}