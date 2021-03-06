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
public class debit_amt extends HttpServlet 
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
            String acc_no=null,mobile=null,adhar_no=null;
            acc_no = request.getParameter("acc_no");
            mobile = request.getParameter("mobile");
            adhar_no = request.getParameter("adhar_no");
            String balance=null, date=null, particulars=null, withdrawl=null;
            date = request.getParameter("date");
            particulars = request.getParameter("particulars");
            withdrawl = request.getParameter("withdrawl");
            balance = request.getParameter("balance");
            long bal,wdl;
            bal = Long.parseLong(balance);
            wdl = Long.parseLong(withdrawl);
            //balance = Long.toString((bal-wdl));
            if(acc_no!=null)
            {
                if(bal>wdl)
                {
                    balance = Long.toString((bal-wdl));
                    //out.println(date+"..."+particulars+"..."+credit+"..."+balance+"..."+acc_no);
                    Statement S = new Statement();
                    String s_acc_no = null;
                    s_acc_no = "s"+acc_no;
                    String query = "INSERT INTO "+s_acc_no+"(date,particulars,debit,credit,balance) VALUES('"+date+"','"+particulars+"','"+withdrawl+"','','"+balance+"')";
                    String verified = "update account set kyc='Verified' where acc_no="+acc_no;
                    Account A = new Account();
                    AccountDAO ad = new AccountDAO();
                    if(StatementDAO.firstEntry(query))
                    {
                        //out.println("Success");
                        out.println("<script>alert('Amount debited.')</script>");
                        out.println("<script>window.location.replace('debit.jsp');</script>");
                    }
                    else
                    {
                        //out.println("Error");
                        out.println("<script>alert('There is an technical error.\nTry after some time.')</script>");
                        out.println("<script>window.location.replace('debit.jsp');</script>");
                    }
                }
                else
                {
                    if(wdl>bal)
                    {
                        out.println("<script>alert('Insufficient Balance.')</script>");
                        out.println("<script>window.location.replace('debit.jsp');</script>");
                    }
                }
            }
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            Logger.getLogger(debit_amt.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}