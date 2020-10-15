<%@page import="dao.AdminDAO"%>
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
										<tr bgcolor="#FFF"> 
											<td><a href="index.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Have an Account</a></td>
										</tr>	
										<tr bgcolor="#FFF"> 
											<td><a href="signup.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Create new Account</a></td>
										</tr>	
										<tr bgcolor="#EEE"> 	
											<td><a href="admin_login.jsp" title="" style="color:#2e00ff; text-decoration:none;">&gt; Bank Employee Login</a></td>
                                                                                </tr>
									</tbody>
								</table>
							</td>
							<td align="center" width="70%">
                                                            <form method="POST" action="admin_login.jsp">
								<table style="margin-bottom:40px;" width="50%" cellpadding="8" cellspacing="1" border="0" bgcolor="#2e00ff">
									<tr>
										<td colspan="2" style="color:#FFF;">Bank Employee Login</td>
									</tr>
									<tr bgcolor="#FFF">
										<td>Username:</td>
                                                                                <td><input type="text" name="username" title="Username" placeholder="Username" required autocomplete="off"/></td>
									</tr>
									<tr bgcolor="#EEE">
										<td>Password:</td>
                                                                                <td><input type="password" name="password" title="Password" placeholder="Password" required autocomplete="off"/></td>
									</tr>
									<tr bgcolor="#FFF">
										<td>&nbsp;</td>
                                                                                <td>
                                                                                    <input type="submit" title="Admin Login">&nbsp;&nbsp;<input type="reset" title="Reset">
                                                                                </td>
									</tr>
								</table>
                                                            </form>
                                                            <%
                                                            String username=null,password=null;
                                                            username = request.getParameter("username");
                                                            password = request.getParameter("password");
                                                            if(username!=null && password!=null)
                                                            {
                                                                if(AdminDAO.checkLogin(username,password))
                                                                {
                                                                    session.setAttribute("username",username);
                                                                    response.sendRedirect("admin.jsp");
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