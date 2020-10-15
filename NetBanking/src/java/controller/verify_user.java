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
public class verify_user extends HttpServlet 
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
            out.println("<title>URL Shorter</title>");
            out.println("<link rel=\"icon\" href='http://www.urllive.in:8084/UrlLive/assets/img/favicon.png'/>");
            out.println("</head>");
            out.println("<body>");
            // fields
            String acc_no=null,mobile=null,adhar_no=null,balance=null;
            acc_no = request.getParameter("acc_no");
            mobile = request.getParameter("mobile");
            adhar_no = request.getParameter("adhar_no");
            balance = request.getParameter("balance");
            if(acc_no!=null)
            {
                String create_table = null;
                create_table = "CREATE TABLE s"+acc_no+" (s_no int AUTO_INCREMENT UNIQUE, date VARCHAR(12), particulars VARCHAR(100), debit VARCHAR(10), credit VARCHAR(10), balance VARCHAR(10))";
                if(StatementDAO.UserStatement(create_table))
                {
                    Statement S = new Statement();
                    String date=null;
                    DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("dd/MM/YYYY hh:mm:ss a");    // date format
                    LocalDateTime dtf = LocalDateTime.now();
                    date = dtf1.format(dtf);
                    date = date.substring(0,10);
                    String s_acc_no = null;
                    s_acc_no = "s"+acc_no;
                    String query = "INSERT INTO "+s_acc_no+"(date,particulars,debit,credit,balance) VALUES('"+date+"','CASH DEPOSIT SELF','','"+balance+"','"+balance+"')";
                    String verified = "update account set kyc='Verified' where acc_no="+acc_no;
                    Account A = new Account();
                    AccountDAO ad = new AccountDAO();
                    if(StatementDAO.firstEntry(query) && ad.verifiedUser(verified))
                    {
                        //out.println("Success");
                        out.println("<script>alert('Account Verified.')</script>");
                        out.println("<script>window.location.replace('admin.jsp');</script>");
                    }
                    else
                    {
                        //out.println("Error");
                        out.println("<script>alert('There is an technical error.\nTry after some time.')</script>");
                        out.println("<script>window.location.replace('admin.jsp');</script>");
                    }
                }
            }
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            Logger.getLogger(verify_user.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}