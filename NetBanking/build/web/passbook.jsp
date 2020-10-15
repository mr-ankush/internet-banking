<%@page import="dao.StatementDAO"%>
<%@page import="dao.AdminDAO"%>
<%@page import="model.Admin"%>
<%@page import="dao.NomineeDAO"%>
<%@page import="model.Nominee"%>
<%@page import="dao.AccountDAO"%>
<%@page import="model.Account"%>
<%@page import="dao.LoginDAO"%>
<%@page import="model.Login"%>
<%@page import="dao.InfoDAO"%>
<%@page import="model.Info"%>
<%@page import="dao.LoginDAO"%>
<%@page import="model.Login"%>
<%
String username = null;
username = session.getAttribute("username").toString();
Admin Adm = new Admin();
AdminDAO adm = new AdminDAO();
Info I = new Info();
InfoDAO id = new InfoDAO();
Account A = new Account();
AccountDAO ad = new AccountDAO();
Login L = new Login();
LoginDAO ld = new LoginDAO();
//Deposit D = new Deposit();
//DepositDAO dd = new DepositDAO();
//Image img = new Image();
//ImageDAO imgd = new ImageDAO();
Nominee N = new Nominee();
NomineeDAO nd = new NomineeDAO();
//Statement S = new Statement();
//StatementDAO sd = new StatementDAO();
//Transfer T = new Transfer();
//TransferDAO td = new TransferDAO();
//Withdrawl W = new Withdrawl();
//WithdrawlDAO wd = new WithdrawlDAO();
Adm = adm.searchAddminByUsername(username);
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bank</title>
<style type="text/css">
	body{ font-family:Tahoma, Geneva, sans-serif; font-size:14px; }
	.container{ 
		width:100%;
		margin:0px auto;
		max-width:1190px;
		}
	input{ 
		padding:4px;
		border:solid 1px #CCC;
		}	
</style>
</head>
<body>
<header>		
		<div class="container">
			<table width="100%" cellpadding="8" cellspacing="1" border="0">
				<tr>
					<td>
						<h1 id="logo">Lokhande Brother's Bank</h1>
					</td>
					<td align="right">	
						<table width="100%" cellpadding="8" cellspacing="0" border="0" bgcolor="#DDD">
					<tr bgcolor="#FFF">
						<td colspan="2" align="right"><a style="text-decoration:none;">Hello <%= Adm.getAdmin() %></a> | <a href="signout.jsp" style="text-decoration:none;">Log-Out!</a></td>
					</tr>
					</table>
					</td>	
				</tr>
			</table>		
		</div>	
</header>
<article>
		<div class="container">
				<table width="100%" cellpadding="8" cellspacing="0" border="0" bgcolor="">
						<tr bgcolor="#FFF"> 
							<td colspan="2">	
								<table width="100%" cellpadding="8" cellspacing="1" border="0" bgcolor="#DDD">
									<tbody>
										<tr bgcolor="#2e00ff"> 
											<td><a href="index.jsp" title="" style="color:#FFF; text-decoration:none;">Home</a></td>
											<td><a href="#" title="" style="color:#FFF; text-decoration:none;">About Us</a></td>
											<td><a href="#" title="" style="color:#FFF; text-decoration:none;">Services</a></td>
											<td><a href="#" title="" style="color:#FFF; text-decoration:none;">FAQ</a></td>
											<td><a href="#" title="" style="color:#FFF; text-decoration:none;">Loan</a></td>
											<td><a href="#" title="" style="color:#FFF; text-decoration:none;">Credit Card</a></td>
											<td><a href="#" title="" style="color:#FFF; text-decoration:none;">Support</a></td>
										</tr>
									</tbody>
								</table>				
							</td>
						</tr>
						<tr>
                                                    <td colspan="2"><img src="images/money-2696219.jpg" alt="" /></td>
						</tr>
						<tr bgcolor="#FFF">
							<td width="20%">
								<table width="100%" cellpadding="8" cellspacing="1" border="0" bgcolor="#BBB" style="text-transform:uppercase; font-weight:bold;">
									<tbody>
                                                                                <tr bgcolor="#FFF">
											<td><a href="admin_servlet?username=<%= username %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Verify Customer</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#FFF">
											<td><a href="credit_servlet?username=<%= username %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Credit/Deposit Entry</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#FFF">
											<td><a href="debit_servlet?username=<%= username %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Debit/Withdrawl Entry</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#EEE">
											<td><a href="passbook_servlet?username=<%= username %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Passbook Entry</a></td>
                                                                                </tr>
									</tbody>
								</table>
							</td>
							<td align="center" width="70%">
                                                            <form method="POST" action="print.jsp" target="_blank">
								<table style="margin-bottom:40px;" width="50%" cellpadding="8" cellspacing="1" border="0" bgcolor="#2e00ff">
									<tr>
										<td colspan="2" style="color:#FFF;">Passbook Print</td>
									</tr>
									<tr bgcolor="#FFF">
										<td>Mobile:</td>
                                                                                <td><input name="mobile" type="tel" title="Mobile" placeholder="Mobile" maxlength="10" required autocomplete="off"/></td>
									</tr>
									<tr bgcolor="#FFF">
										<td>&nbsp;</td>
										<td>
                                                                                    <input type="submit" value="Statement">
                                                                                    &nbsp;&nbsp;
                                                                                    <input type="reset" value="Clear">
                                                                                </td>
									</tr>
								</table>
                                                            </form>
                                                            <%
                                                            String acc_no=null, mobile=null;
                                                            acc_no = request.getParameter("acc_no");
                                                            mobile = request.getParameter("mobile");
                                                            if(acc_no!=null && mobile!=null)
                                                            {
                                                                if(LoginDAO.checkAuthenticUser(acc_no, mobile))
                                                                {
                                                                    A = ad.searchUserAccountByAcc_no(acc_no);
                                                                    if(A.getKyc().equals("Verified"))
                                                                    {
                                                                    %>
                                                                    <script>alert("User is verified by bank on <%= A.getJ_date() %> at <%= A.getJ_time() %>.");</script>
                                                                    <%
                                                                    }
                                                                    else
                                                                    {
                                                                        //out.println(create_table);
                                                                        L = ld.searchUserByMobile(mobile);
                                                                        %>
                                                                        <form method="POST" action="verify_user">
                                                                        <table id="data" style="margin-bottom:40px;" width="50%" cellpadding="8" cellspacing="1" border="0" bgcolor="#2e00ff">
                                                                            <tr bgcolor="black">
                                                                                    <td colspan="2" style="color:#FFF;">Verify User Account</td>
                                                                            </tr>
                                                                            <tr bgcolor="#FFF">
                                                                                    <td>A/c No.:</td>
                                                                                    <td><input name="acc_no" type="tel" title="A/c. No." placeholder="A/c. No." required maxlength="10" autocomplete="off" value="<%= L.getAcc_no() %>" readonly></td>
                                                                            </tr>
                                                                            <tr bgcolor="#EEE">
                                                                                    <td>Mobile:</td>
                                                                                    <td><input name="mobile" type="tel" title="Mobile" placeholder="Mobile" maxlength="10" required autocomplete="off" value="<%= L.getMobile() %>" readonly/></td>
                                                                            </tr>
                                                                            <tr bgcolor="#FFF">
                                                                                    <td>Aadhar No.</td>
                                                                                    <td><input name="adhar_no" type="tel" title="Adhar No." placeholder="Adhar No." required autocomplete="off" maxlength="12" value="<%= L.getAdhar_no() %>" readonly></td>
                                                                            </tr>
                                                                            <tr bgcolor="#EEE">
                                                                                    <td>
                                                                                        A/c. Type:
                                                                                        <br><br>
                                                                                        A/c. Opening Date:
                                                                                        <br><br>
                                                                                        Initial Deposit:
                                                                                    </td>
                                                                                    <td>
                                                                                        &nbsp;<%= A.getAcc_type() %>
                                                                                        <br><br>
                                                                                        &nbsp;<%= A.getJ_date() %> <%= A.getJ_time() %>
                                                                                        <br><br>
                                                                                        <input name="balance" type="text" title="Balance" placeholder="Balance" maxlength="10" required autocomplete="off" value="<%= A.getKyc() %>"/>
                                                                                    </td>
                                                                            </tr>
                                                                            <tr bgcolor="#FFF">
                                                                                    <td>&nbsp;</td>
                                                                                    <td>
                                                                                        <input type="submit" value="Verify Acoount">
                                                                                        &nbsp;&nbsp;
                                                                                        <input type="button" value="Close" onclick="hide()">
                                                                                    </td>
                                                                            </tr>
                                                                        </table>
                                                                        </form>
                                                                        <script>
                                                                            function hide()
                                                                            {
                                                                                document.getElementById("data").style.display = "none";
                                                                            }
                                                                        </script>
                                                                    <%
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                %>
                                                                    <script>alert("Account No./Mobile is incorrect.");</script>
                                                                <%
                                                                }
                                                            }
                                                            %>
							</td>
						</tr>
						<tr>
							<td bgcolor="#FFF" colspan="2" align="center">
								<hr>
								Copyright 2020
							</td>
						</tr>
				</table>				
		</div>
</article>
</body>
</html>