<%@page import="dao.LoginDAO"%>
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
						<td colspan="2" align="right"><a href="index.jsp" title="" style="text-decoration:none;">Login</a> | <a href="signup.jsp" title="" style="text-decoration:none;">Register</a></td>
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
										<tr bgcolor="#EEE"> 
											<td><a href="index.jsp" title="" style="color:#2e00ff; text-decoration:none;">&gt; Have an Account</a></td>
										</tr>	
										<tr bgcolor="#FFF"> 
											<td><a href="signup.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Create new Account</a></td>
										</tr>	
										<tr bgcolor="#FFF"> 	
											<td><a href="admin_login.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Bank Employee Login</a></td>
                                                                                </tr>
									</tbody>
								</table>
							</td>
							<td align="center" width="70%">
                                                            <form method="POST" action="index.jsp">
								<table style="margin-bottom:40px;" width="50%" cellpadding="8" cellspacing="1" border="0" bgcolor="#2e00ff">
									<tr>
										<td colspan="2" style="color:#FFF;">Login</td>
									</tr>
									<tr bgcolor="#FFF">
										<td>Mobile:</td>
										<td><input name="mobile" type="tel" title="Mobile" placeholder="Mobile" required maxlength="10"></td>
									</tr>
									<tr bgcolor="#EEE">
										<td>Password:</td>
                                                                                <td><input name="password" type="password" title="Password" placeholder="Password" required/></td>
									</tr>
									<tr bgcolor="#FFF">
										<td>&nbsp;</td>
										<td>
                                                                                    <input type="submit" value="Log-In">
                                                                                    &nbsp;&nbsp;
                                                                                    <input type="reset" value="Reset">
                                                                                </td>
									</tr>
								</table>
                                                            </form>
                                                            <%
                                                            String mobile=null,password=null;
                                                            mobile = request.getParameter("mobile");
                                                            password = request.getParameter("password");
                                                            if(mobile!=null && password!=null)
                                                            {
                                                                if(LoginDAO.checkLogin(mobile, password))
                                                                {
                                                                    response.sendRedirect("user.jsp");
                                                                    session.setAttribute("mobile",mobile);
                                                                }
                                                                else
                                                                {
                                                                %>
                                                                    <script>alert("Username/Password is incorrect.");</script>
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