package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import model.Account;
import dao.AccountDAO;
import dao.ImageDAO;
import dao.InfoDAO;
import dao.NomineeDAO;
import java.util.Random;
import model.Login;
import dao.LoginDAO;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("<title>Bank</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\tbody{ font-family:Tahoma, Geneva, sans-serif; font-size:14px; }\n");
      out.write("\t.container{ \n");
      out.write("\t\twidth:100%;\n");
      out.write("\t\tmargin:0px auto;\n");
      out.write("\t\tmax-width:1190px;\n");
      out.write("\t\t}\n");
      out.write("\tinput,select{ \n");
      out.write("\t\tpadding:4px;\n");
      out.write("\t\tborder:solid 1px #CCC;\n");
      out.write("\t\t}\t\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<header>\t\t\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<table width=\"100%\" cellpadding=\"8\" cellspacing=\"1\" border=\"0\">\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t<h1 id=\"logo\">Jain Brother's Bank</h1>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t<td align=\"right\">\t\n");
      out.write("\t\t\t\t\t\t<table width=\"100%\" cellpadding=\"8\" cellspacing=\"0\" border=\"0\" bgcolor=\"#DDD\">\n");
      out.write("\t\t\t\t\t<tr bgcolor=\"#FFF\">\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\" align=\"right\"><a href=\"index.jsp\" title=\"\" style=\"text-decoration:none;\">Login</a> | <a href=\"signup.jsp\" title=\"\" style=\"text-decoration:none;\">Register</a></td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t</td>\t\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</table>\t\t\n");
      out.write("\t\t</div>\t\n");
      out.write("</header>\n");
      out.write("<article>\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<table width=\"100%\" cellpadding=\"8\" cellspacing=\"0\" border=\"0\" bgcolor=\"\">\n");
      out.write("\t\t\t\t\t\t<tr bgcolor=\"#FFF\"> \n");
      out.write("\t\t\t\t\t\t\t<td colspan=\"2\">\t\n");
      out.write("\t\t\t\t\t\t\t\t<table width=\"100%\" cellpadding=\"8\" cellspacing=\"1\" border=\"0\" bgcolor=\"#DDD\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#2e00ff\"> \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"index.jsp\" title=\"\" style=\"color:#FFF; text-decoration:none;\">Home</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"#\" title=\"\" style=\"color:#FFF; text-decoration:none;\">About Us</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"#\" title=\"\" style=\"color:#FFF; text-decoration:none;\">Services</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"#\" title=\"\" style=\"color:#FFF; text-decoration:none;\">FAQ</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"#\" title=\"\" style=\"color:#FFF; text-decoration:none;\">Loan</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"#\" title=\"\" style=\"color:#FFF; text-decoration:none;\">Credit Card</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"#\" title=\"\" style=\"color:#FFF; text-decoration:none;\">Support</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t\t\t\t\t</table>\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("                                                    <td colspan=\"2\"><img src=\"images/money-2696219.jpg\" alt=\"\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr bgcolor=\"#FFF\">\n");
      out.write("\t\t\t\t\t\t\t<td width=\"20%\">\n");
      out.write("\t\t\t\t\t\t\t\t<table width=\"100%\" cellpadding=\"8\" cellspacing=\"1\" border=\"0\" bgcolor=\"#BBB\" style=\"text-transform:uppercase; font-weight:bold;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#FFF\"> \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"index.jsp\" title=\"\" style=\"color:#2a2a2a;text-decoration:none;\">&gt; Have an Account</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#EEE\"> \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"signup.jsp\" title=\"\" style=\"color:#2e00ff; text-decoration:none;\">&gt; Create new Account</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#FFF\"> \t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td><a href=\"admin_login.jsp\" title=\"\" style=\"color:#2a2a2a; text-decoration:none;\">&gt; Bank Employee Login</a></td>\n");
      out.write("                                                                                </tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\" width=\"70%\">\n");
      out.write("                                                            <form method=\"POST\" action=\"signup.jsp\">\n");
      out.write("\t\t\t\t\t\t\t\t<table style=\"margin-bottom:40px;\" width=\"50%\" cellpadding=\"8\" cellspacing=\"1\" border=\"0\" bgcolor=\"#2e00ff\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"color:#FFF;\">Sign Up</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("                                                                        <tr bgcolor=\"#FFF\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>First Name:</td>\n");
      out.write("                                                                                <td>\n");
      out.write("                                                                                    <select name=\"nametitle\">\n");
      out.write("                                                                                        <option value=\"Mr. \">Mr.</option>\n");
      out.write("                                                                                        <option value=\"Miss. \">Miss.</option>\n");
      out.write("                                                                                        <option value=\"Mrs. \">Mrs.</option>\n");
      out.write("                                                                                        <option value=\"Ms. \">Ms.</option>\n");
      out.write("                                                                                        <option value=\"Mx. \">Mx.</option>\n");
      out.write("                                                                                    </select>\n");
      out.write("                                                                                    <input name=\"fname\" type=\"text\" title=\"First Name\" placeholder=\"First Name\" required autocomplete=\"off\" style=\"text-transform:uppercase;\">\n");
      out.write("                                                                                </td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#EEE\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Last Name:</td>\n");
      out.write("                                                                                <td><input name=\"lname\" type=\"text\" title=\"Last Name\" placeholder=\"Last Name\" required autocomplete=\"off\" style=\"text-transform:uppercase;\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("                                                                        <tr bgcolor=\"#FFF\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Adhar No.:</td>\n");
      out.write("                                                                                <td><input name=\"adhar_no\" type=\"text\" title=\"Adhar No.\" placeholder=\"Adhar No.\" required autocomplete=\"off\" minlength=\"12\" maxlength=\"12\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#EEE\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Email Id:</td>\n");
      out.write("                                                                                <td><input name=\"email\" type=\"email\" title=\"Email\" placeholder=\"Email\" required style=\"text-transform:lowercase;\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#FFF\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Mobile:</td>\n");
      out.write("                                                                                <td><input name=\"mobile\" type=\"tel\" title=\"Mobile\" placeholder=\"Mobile\" required maxlength=\"10\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("                                                                        <tr bgcolor=\"#EEE\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Password:</td>\n");
      out.write("                                                                                <td><input name=\"password\" type=\"password\" title=\"Password\" placeholder=\"Password\" required autocomplete=\"off\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("                                                                        <tr bgcolor=\"#FFF\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Account Type:</td>\n");
      out.write("                                                                                <td>\n");
      out.write("                                                                                    <select name=\"acc_type\">\n");
      out.write("                                                                                        <option value=\"Saving Account\" selected>Saving Account</option>\n");
      out.write("                                                                                        <option value=\"Current Account\">Current Account</option>\n");
      out.write("                                                                                    </select>\n");
      out.write("                                                                                </td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("                                                                        <tr bgcolor=\"#EEE\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Minimum Deposit:</td>\n");
      out.write("                                                                                <td>\n");
      out.write("                                                                                    <select name=\"balance\">\n");
      out.write("                                                                                        <option value=\"100\" disabled>&#8377; 100</option>\n");
      out.write("                                                                                        <option value=\"500\" disabled>&#8377; 500</option>\n");
      out.write("                                                                                        <option value=\"1000\">&#8377; 1,000</option>\n");
      out.write("                                                                                        <option value=\"5000\" selected>&#8377; 5,000</option>\n");
      out.write("                                                                                        <option value=\"10000\">&#8377; 10,000</option>\n");
      out.write("                                                                                        <option value=\"15000\">&#8377; 15,000</option>\n");
      out.write("                                                                                        <option value=\"20000\">&#8377; 20,000</option>\n");
      out.write("                                                                                    </select>\n");
      out.write("                                                                                </td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr bgcolor=\"#FFF\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><input type=\"submit\" value=\"Create Account\">&nbsp;&nbsp;<input type=\"reset\" value=\"Clear\"></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t</table>\n");
      out.write("                                                            </form>\n");
      out.write("                                                            ");

                                                            String nametitle=null,fname=null,lname=null;
                                                            nametitle = request.getParameter("nametitle");
                                                            fname = request.getParameter("fname");
                                                            fname = nametitle+fname;
                                                            fname = fname.toUpperCase();
                                                            lname = request.getParameter("lname");
                                                            String acc_type=null,balance=null;
                                                            acc_type = request.getParameter("acc_type");
                                                            balance = request.getParameter("balance");
                                                            String adhar_no=null,email=null,mobile=null,password=null,hint=null;
                                                            adhar_no = request.getParameter("adhar_no");
                                                            email = request.getParameter("email").toLowerCase();
                                                            mobile = request.getParameter("mobile");
                                                            password = request.getParameter("password");
                                                            int i,lenght = 10;
//                                                            String NUMBERS1 = "ABcdEFghIJklMNopQRstUVwxYZabCDefGHijKLmnOPqrSTuvWXyz9876543210123456789"; 
//                                                            String NUMBERS2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
//                                                            String NUMBERS3 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789";
                                                            String[] a= 
                                                            {
                                                                "ABcdEFghIJklMNopQRstUVwxYZabCDefGHijKLmnOPqrSTuvWXyz9876543210123456789",
                                                                "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",
                                                                "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789",
                                                                "0123456789AbCdEfGhIjKlMnOpQrStUvWxYzaBcDeFgHiJkLmNoPqRsTuVwXyZ",
                                                                "AbCdEfGhIjKlMnOpQrStUvWxYzaBcDeFgHiJkLmNoPqRsTuVwXyZ9876543210"

                                                            };
                                                            Random rnd= new Random();
                                                            String NUMBERS = a[rnd.nextInt(a.length)];
                                                            //out.println(NUMBERS+"<br>");
                                                            Random random = new Random();
                                                            char[] hints = new char[lenght];
                                                            int index = 0;
                                                            for(i=0; i<lenght; i++)
                                                            {
                                                                hints[i] = NUMBERS.charAt(random.nextInt(NUMBERS.length()));
                                                            }
                                                            hint = hints[0]+""+hints[1]+""+hints[2]+""+hints[3]+""+hints[4]+""+hints[5]+""+hints[6]+""+hints[7]+""+hints[8]+""+hints[9];
                                                            if(adhar_no!=null && password!=null)
                                                            {
                                                                if(LoginDAO.checkSignup(adhar_no, mobile))
                                                                {
                                                                
      out.write("\n");
      out.write("                                                                    <script>alert(\"Mobile No./Adhar No. already registered.\");</script>\n");
      out.write("                                                                ");
   
                                                                }
                                                                else
                                                                {
                                                                    LoginDAO ld = new LoginDAO();
                                                                    Login L = new Login();
                                                                    L.setAdhar_no(adhar_no);
                                                                    L.setEmail(email);
                                                                    L.setMobile(mobile);
                                                                    L.setPassword(password);
                                                                    L.setHint(hint);
                                                                    if(ld.signupUser(L))
                                                                    {
                                                                        L = ld.searchUserByMobile(mobile);
                                                                        String acc_no = Integer.toString(L.getAcc_no());
                                                                        Account A = new Account();
                                                                        A.setAcc_no(acc_no);
                                                                        String date=null,j_date=null,j_time=null;
                                                                        DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("dd/MM/YYYY hh:mm:ss");    // date format
                                                                        LocalDateTime dtf = LocalDateTime.now();
                                                                        date = dtf1.format(dtf);
                                                                        j_date = date.substring(0,10);
                                                                        j_time = date.substring(11);
                                                                        A.setJ_date(j_date);
                                                                        A.setJ_time(j_time);
                                                                        A.setAcc_type(acc_type);
                                                                        A.setKyc("Incomplete");
                                                                        if(
                                                                            NomineeDAO.regNominee(acc_no) && InfoDAO.regInfo(acc_no, fname, lname) && ImageDAO.regImage(acc_no)
                                                                                && AccountDAO.regAccount(A)
                                                                          )
                                                                        {
                                                                    
      out.write("\n");
      out.write("                                                                        <script>\n");
      out.write("                                                                            alert(\"Account No. : ");
      out.print( L.getAcc_no() );
      out.write(" (Auto-generated by Bank)\\nOnline account successfully created with initial deposit \\u20B9 ");
      out.print( balance );
      out.write(".\\nLogin required to enjoy services.\");\n");
      out.write("                                                                            window.location.replace(\"index.jsp\");\n");
      out.write("                                                                        </script>\n");
      out.write("                                                                    ");

                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                    
      out.write("\n");
      out.write("                                                                        <script>alert(\"There is an technical error in server.\\nTry after some time.\");</script>\n");
      out.write("                                                                    ");

                                                                    }
                                                                }
                                                            }
                                                            
      out.write("\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td bgcolor=\"#FFF\" colspan=\"2\" align=\"center\">\n");
      out.write("\t\t\t\t\t\t\t\t<hr>\n");
      out.write("\t\t\t\t\t\t\t\tCopyright 2020\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\t\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("</article>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
