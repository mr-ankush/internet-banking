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
N = nd.searchNominee(acc_no);
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
                                                                                <tr bgcolor="#EEE"> 
											<td><a href="nominee.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Nominee</a></td>
                                                                                </tr>
										<tr bgcolor="#FFF"> 
											<td><a href="transfer.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Transfer</a></td>
										</tr>	
										<tr bgcolor="#FFF"> 	
											<td><a href="statement_servlet?mobile=<%= mobile %>" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Statement</a></td>
                                                                                </tr>
                                                                                <tr bgcolor="#FFF"> 
											<td><a href="setting.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Setting</a></td>
                                                                                </tr>
									</tbody>
								</table>
							</td>
							<td align="center" width="100%">
                                                            <form method="POST" action="add_nominee">
                                                                <table style="margin-bottom:40px;display:none;" width="100%" cellpadding="8" cellspacing="1" border="0" bgcolor="#FFF" id="data">
									<tr bgcolor="gray" width="100%">
                                                                            <td colspan="2" style="color:#FFF;">Add Nominee :&nbsp;&nbsp;&nbsp;<input type="button" onclick="hide()" value="close"/></td>
									</tr>
									<tr bgcolor="#FFF">
										<td width="30%">
                                                                                    Nominee Name :
                                                                                </td>
                                                                                <td width="70%">
                                                                                    <input type="hidden" name="mobile" maxlength="10" readonly value="<%= L.getMobile() %>"/>
                                                                                    <input type="hidden" name="acc_no" maxlength="10" readonly value="<%= L.getAcc_no() %>"/>
                                                                                    <input type="text" name="n_name" title="Nominee Name" placeholder="Nominee Name" required value="<%= N.getN_name() %>"/>
                                                                                </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
										<td width="30%">
                                                                                    Relation with Nominee :
                                                                                </td>
                                                                                <td width="70%">
                                                                                    <input type="text" name="n_relation" title="Relation with Nominee" placeholder="Relation with Nominee" required value="<%= N.getN_relation() %>"/>
                                                                                </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
										<td width="30%">
                                                                                    Date of Birth :
                                                                                </td>
                                                                                <td width="70%">
                                                                                    <input type="text" name="n_dob" title="Date of Birth" placeholder="DD/MM/YYYY" required value="<%= N.getN_dob() %>"/>
                                                                                </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
										<td width="30%">
                                                                                    Mobile :
                                                                                </td>
                                                                                <td width="70%">
                                                                                    <input type="tel" name="n_mobile" title="Mobile" placeholder="Mobile" maxlength="10" minlength="10" required value="<%= N.getN_mobile() %>"/>
                                                                                </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
										<td width="30%">
                                                                                    Address :
                                                                                </td>
                                                                                <td width="70%">
                                                                                    <textarea cols="35" rows="5" name="n_add" spellcheck="false" required><%= N.getN_add() %></textarea>
                                                                                </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
                                                                            <td colspan="2" style="color:#FFF;">
                                                                               <%
                                                                               if(N.getN_name().isEmpty())
                                                                               {
                                                                               %>
                                                                                    <input type="submit" value="Add Nominee"/>
                                                                               <%
                                                                               }
                                                                               else
                                                                               {
                                                                               %>
                                                                                    <input type="submit" value="Update Nominee"/>
                                                                               <%    
                                                                               }
                                                                               %>
                                                                            </td>
                                                                        </tr>
                                                                        <tr bgcolor="gray" width="100%">
                                                                            <td colspan="2" style="color:#FFF;"><hr></td>
									</tr>
                                                                </table>
                                                            </form>
								<table style="margin-bottom:40px;" width="100%" cellpadding="8" cellspacing="1" border="0" bgcolor="#2e00ff">
									<tr bgcolor="gray">
										<td colspan="2" style="color:#FFF;">Nominee Detail :</td>
									</tr>
                                                                        <%
                                                                        if(N.getN_name().isEmpty())
                                                                        {
                                                                        %>
									<tr bgcolor="#FFF">                                                                            
										<td colspan="2" width="100%" align="center">
                                                                                    <br><big>Nominee not added</big><br><br>
                                                                                    <input type="button" value="Add Nominee" onclick="show()"/>
                                                                                    <br><br>
                                                                                </td>
                                                                        </tr>
                                                                        <%
                                                                        }
                                                                        else
                                                                        {
                                                                        %>
                                                                        <tr bgcolor="#FFF">
                                                                            <td width="30%">
                                                                                Nominee Name :
                                                                            </td>
                                                                            <td width="70%">
                                                                                <%= N.getN_name() %>
                                                                            </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
                                                                            <td width="30%">
                                                                                Relation with Nominee :
                                                                            </td>
                                                                            <td width="70%">
                                                                                <%= N.getN_relation() %>
                                                                            </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
                                                                            <td width="30%">
                                                                                Nominee D.O.B. :
                                                                            </td>
                                                                            <td width="70%">
                                                                                <%= N.getN_dob() %>
                                                                            </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
                                                                            <td width="30%">
                                                                                Mobile :
                                                                            </td>
                                                                            <td width="70%">
                                                                                <%= N.getN_mobile() %>
                                                                            </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
                                                                            <td width="30%">
                                                                                Nominee Address :
                                                                            </td>
                                                                            <td width="70%">
                                                                                <%= N.getN_add() %>
                                                                            </td>
                                                                        </tr>
                                                                        <tr bgcolor="#FFF">
                                                                                <td colspan="2" width="100%" align="center">
                                                                                    <br><big>Update Nominee</big><br><br>
                                                                                    <input type="button" value="Update Nominee" onclick="show()"/>
                                                                                    <br><br>
                                                                                </td>
                                                                        </tr>
                                                                            <%
                                                                            }
                                                                            %>
                                                                            <script>
                                                                            function show()
                                                                            {
                                                                                document.getElementById("data").style.display = "block";
                                                                            }
                                                                            function hide()
                                                                            {
                                                                                document.getElementById("data").style.display = "none";
                                                                            }
                                                                            </script>
									</tr>
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