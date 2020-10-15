<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.StatementDAO"%>
<%@page import="model.Statement"%>
<%@page import="dao.NomineeDAO"%>
<%@page import="model.Nominee"%>
<%@page import="dao.AccountDAO"%>
<%@page import="model.Account"%>
<%@page import="dao.LoginDAO"%>
<%@page import="model.Login"%>
<%@page import="dao.InfoDAO"%>
<%@page import="model.Info"%>
<%
String mobile = null;
mobile = session.getAttribute("mobile").toString();
//mobile = request.getParameter("mobile");
Login L = new Login();
LoginDAO ld = new LoginDAO();
L = ld.searchUserByMobile(mobile);
String acc_no = Integer.toString(L.getAcc_no());
Info I = new Info();
InfoDAO id = new InfoDAO();
Account A = new Account();
AccountDAO ad = new AccountDAO();
//Deposit D = new Deposit();
//DepositDAO dd = new DepositDAO();
//Image img = new Image();
//ImageDAO imgd = new ImageDAO();
Nominee N = new Nominee();
NomineeDAO nd = new NomineeDAO();
Statement S = new Statement();
StatementDAO sd = new StatementDAO();
//Transfer T = new Transfer();
//TransferDAO td = new TransferDAO();
//Withdrawl W = new Withdrawl();
//WithdrawlDAO wd = new WithdrawlDAO();
I = id.searchUserInfoByAcc_no(acc_no);
A = ad.searchUserAccountByAcc_no(acc_no);
%>
<%
if(A.getKyc().equals("Verified"))
{
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
						<td colspan="2" align="right"><a style="text-decoration:none;">Hello <%= I.getFname() %></a> | <a href="signout.jsp" style="text-decoration:none;">Log-Out!</a></td>
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
											<td><a href="user_servlet?mobile=<%= mobile %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; A/c Info</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#FFF"> 
											<td><a href="photo.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Upload Photo</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#FFF"> 
											<td><a href="aadhar.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Upload Aadhar</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#FFF"> 
											<td><a href="nominee_servlet?mobile=<%= mobile %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Nominee</a></td>
                                                                                </tr>
										<tr bgcolor="#FFF"> 
											<td><a href="transfer.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Transfer</a></td>
										</tr>	
										<tr bgcolor="#EEE"> 	
											<td><a href="statement_servlet?mobile=<%= mobile %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Statement</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#FFF"> 
											<td><a href="setting.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Setting</a></td>
                                                                                </tr>
									</tbody>
								</table>
							</td>
							<td align="center" width="100%">
								<table style="margin-bottom:40px;" width="100%" cellpadding="8" cellspacing="1" border="0" bgcolor="#2e00ff">
                                                                        <tr bgcolor="#FFF">
                                                                            <td width="30%">
                                                                                    + MOD bal
                                                                                </td>
                                                                                <%
                                                                                String query;
                                                                                query = "Select * from s"+acc_no+" where s_no=(Select max(s_no) from s"+acc_no+")";
                                                                                S = sd.modBal(query);
                                                                                %>
                                                                                <td colspan="4" width="70%">
                                                                        <big style="cursor:pointer;"><b onclick="bal()" style="color:blue;">+ &nbsp;&nbsp;&#8377;&nbsp;<%= S.getBalance() %></b>&nbsp;&nbsp;(A/c. No.&nbsp;:&nbsp;<%= acc_no %>)</big>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Print" onclick="print()"/>
                                                                                    <script>function bal(){alert("+MOD Balance (Total Amount) : \u20B9<%= S.getBalance() %>");}</script>
                                                                                </td>
                                                                        </tr>
									<tr bgcolor="gray">
										<td colspan="5" style="color:#FFF;">Account Statement :</td>
									</tr>
                                                                        <%
                                                                        List<Statement> Datalist = new ArrayList<Statement>();
                                                                        String queries = null;
                                                                        queries = "select * from s"+acc_no;
                                                                        Datalist = sd.miniStatement(queries);
                                                                        %>
									<tr bgcolor="#FFF">
										<td width="">
                                                                                    <b>DATE</b>
                                                                                </td>
                                                                                <td width="">
                                                                                    <b>PARTICULARS</b>
                                                                                </td>
                                                                                <td width="">
                                                                                    <b>DEBIT</b>
                                                                                </td>
                                                                                <td width="">
                                                                                    <b>CREDIT</b>
                                                                                </td>
                                                                                <td width="">
                                                                                    <b>BALANCE</b>                                                                                    
                                                                                </td>
									</tr>
                                                                        <%
                                                                        for(Statement st : Datalist)
                                                                        {
                                                                            out.println("<tr bgcolor='#FFF'>");
                                                                            out.println("<td><span>"+st.getDate()+"</span></td>");
                                                                            out.println("<td><span>"+st.getParticulars()+"</span></td>");
                                                                            out.println("<td align='center'><span style='color:red;'>"+st.getDebit()+"</span></td>");
                                                                            out.println("<td align='center'><span style='color:green;'>"+st.getCredit()+"</span></td>");
                                                                            out.println("<td align='center'><span style='color:blue;'>"+st.getBalance()+"</span></td>");
                                                                            out.println("</tr>");
                                                                        }
                                                                        %>
								</table>
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
<%
}
else
{
%>
<script>
    alert("<%= I.getFname() %>, Your account <%= A.getAcc_no() %> is not verified by bank.\nVisit nearest branch to submit KYC & initial deposit amount \u20B9 <%= A.getKyc() %>.");
    window.location.replace("index.jsp");
</script>
<%
}
%>