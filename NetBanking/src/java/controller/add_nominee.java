package controller;
import dao.AccountDAO;
import dao.NomineeDAO;
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
import model.Nominee;
import model.Statement;
@MultipartConfig(maxFileSize = 16177215)          // 16MB Data
public class add_nominee extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("</head>");
            out.println("<body>");
            String n_relation=null,n_name=null,n_dob=null,n_mobile=null,n_add=null,acc_no=null,mobile=null;
            acc_no = request.getParameter("acc_no");
            n_relation = request.getParameter("n_relation");
            n_name = request.getParameter("n_name");
            n_dob = request.getParameter("n_dob");
            n_mobile = request.getParameter("n_mobile");
            n_add = request.getParameter("n_add");
            mobile = request.getParameter("mobile");
            //out.println(acc_no+"     "+mobile);
            if(acc_no!=null && mobile!=null)
            {
                Nominee N = new Nominee();
                NomineeDAO nd = new NomineeDAO();
                //out.println(acc_no+"     "+mobile);
                N.setAcc_no(acc_no);
                N.setN_add(n_add);
                N.setN_dob(n_dob);
                N.setN_mobile(n_mobile);
                N.setN_name(n_name);
                N.setN_relation(n_relation);
                if(nd.updataNominee(N))
                {
                    String url = "nominee_servlet?mobile="+mobile;
                    out.println("<script>alert('Nominee Update.')</script>");
                    out.println("<script>window.location.replace('"+url+"');</script>");
                    //session.setAttribute("mobile",mobile);
                    //response.sendRedirect("nominee_servlet");
                }
            }
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            Logger.getLogger(add_nominee.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}