<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="model.Account"%>
<%@page import="dao.AccountDAO"%>
<%@page import="dao.ImageDAO"%>
<%@page import="dao.InfoDAO"%>
<%@page import="dao.NomineeDAO"%>
<%@page import="java.util.Random"%>
<%@page import="model.Login"%>
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
	input,select{ 
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
											<td><a href="index.jsp" title="" style="color:#2a2a2a;text-decoration:none;">&gt; Have an Account</a></td>
										</tr>	
										<tr bgcolor="#EEE"> 
											<td><a href="signup.jsp" title="" style="color:#2e00ff; text-decoration:none;">&gt; Create new Account</a></td>
										</tr>	
										<tr bgcolor="#FFF"> 	
											<td><a href="admin_login.jsp" title="" style="color:#2a2a2a; text-decoration:none;">&gt; Bank Employee Login</a></td>
                                                                                </tr>
									</tbody>
								</table>
							</td>
							<td align="center" width="70%">
                                                            <form method="POST" action="signup.jsp">
								<table style="margin-bottom:40px;" width="50%" cellpadding="8" cellspacing="1" border="0" bgcolor="#2e00ff">
									<tr>
										<td colspan="2" style="color:#FFF;">Sign Up</td>
									</tr>
                                                                        <tr bgcolor="#FFF">
										<td>First Name:</td>
                                                                                <td>
                                                                                    <select name="nametitle">
                                                                                        <option value="Mr. ">Mr.</option>
                                                                                        <option value="Miss. ">Miss.</option>
                                                                                        <option value="Mrs. ">Mrs.</option>
                                                                                        <option value="Ms. ">Ms.</option>
                                                                                        <option value="Mx. ">Mx.</option>
                                                                                    </select>
                                                                                    <input name="fname" type="text" title="First Name" placeholder="First Name" required autocomplete="off" style="text-transform:uppercase;">
                                                                                </td>
									</tr>
									<tr bgcolor="#EEE">
										<td>Last Name:</td>
                                                                                <td><input name="lname" type="text" title="Last Name" placeholder="Last Name" required autocomplete="off" style="text-transform:uppercase;"></td>
									</tr>
                                                                        <tr bgcolor="#FFF">
										<td>D.O.B.:</td>
                                                                                <td>
                                                                                    <input type="date" name="dob" id="dob" onfocus="date()" required/>
                                                                                    <script>
                                                                                        function date()
                                                                                        {
                                                                                            var current = new Date().getFullYear();
                                                                                            var min = current-120;
                                                                                            min = min+"-01-01";
                                                                                            var max = current-10;
                                                                                            max = max+"-12-31";
                                                                                            document.getElementById("dob").min = min;
                                                                                            document.getElementById("dob").max = max;
                                                                                        }
                                                                                    </script>
                                                                                </td>
									</tr>
                                                                        <tr bgcolor="#EEE">
										<td>Adhar No.:</td>
                                                                                <td><input name="adhar_no" type="text" title="Adhar No." placeholder="Adhar No." required autocomplete="off" minlength="12" maxlength="12"></td>
									</tr>
									<tr bgcolor="#FFF">
										<td>Email Id:</td>
                                                                                <td><input name="email" type="email" title="Email" placeholder="Email" required style="text-transform:lowercase;"></td>
									</tr>
									<tr bgcolor="#EEE">
										<td>Mobile:</td>
                                                                                <td><input name="mobile" type="tel" title="Mobile" placeholder="Mobile" required maxlength="10"></td>
									</tr>
                                                                        <tr bgcolor="#FFF">
										<td>Password:</td>
                                                                                <td><input name="password" type="password" title="Password" placeholder="Password" required autocomplete="off"></td>
									</tr>
                                                                        <tr bgcolor="#EEE">
                                                                            <td>Account Type:<br><br>Minimum Deposit:</td>
                                                                                <td>
                                                                                    <input type="radio" id="sa" name="acc_type" value="Saving Account" checked/><span onclick="radio1()">Saving Account</span>
                                                                                    &nbsp;&nbsp;&nbsp;
                                                                                    <input type="radio" id="ca" name="acc_type" value="Current Account"/><span onclick="radio2()">Current Account</span>
                                                                                    <br><br>
                                                                                    <select name="balance">
                                                                                        <option value="100" disabled>&#8377; 100</option>
                                                                                        <option value="500" disabled>&#8377; 500</option>
                                                                                        <option value="1000">&#8377; 1,000</option>
                                                                                        <option value="5000" selected>&#8377; 5,000</option>
                                                                                        <option value="10000">&#8377; 10,000</option>
                                                                                        <option value="15000">&#8377; 15,000</option>
                                                                                        <option value="20000">&#8377; 20,000</option>
                                                                                    </select>
                                                                                </td>
                                                                                <script>
                                                                                    function radio1()
                                                                                    {
                                                                                        document.getElementById("sa").checked = true;
                                                                                    }
                                                                                    function radio2()
                                                                                    {
                                                                                        document.getElementById("ca").checked = true;
                                                                                    }
                                                                                </script>
									</tr>                                                                        
									<tr bgcolor="#FFF">
										<td>&nbsp;</td>
										<td><input type="submit" value="Create Account">&nbsp;&nbsp;<input type="reset" value="Clear"></td>
									</tr>
								</table>
                                                            </form>
                                                            <%
                                                            String nametitle=null,fname=null,lname=null,dob=null;
                                                            nametitle = request.getParameter("nametitle");
                                                            fname = request.getParameter("fname");
                                                            fname = nametitle+fname;
                                                            fname = fname.toUpperCase();
                                                            lname = request.getParameter("lname");
                                                            dob = request.getParameter("dob");
                                                            if(dob!=null)
                                                            {
                                                            String y = dob.substring(0,4);
                                                            String m = dob.substring(5,7);
                                                            String d = dob.substring(8);
                                                            dob = d+"/"+m+"/"+y;
                                                            }
                                                            dob = dob;
                                                            String acc_type=null,balance=null;
                                                            acc_type = request.getParameter("acc_type");
                                                            balance = request.getParameter("balance");
                                                            String adhar_no=null,email=null,mobile=null,password=null,hint=null;
                                                            adhar_no = request.getParameter("adhar_no");
                                                            email = request.getParameter("email");
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
                                                                %>
                                                                    <script>alert("Mobile No./Adhar No. already registered.");</script>
                                                                <%   
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
                                                                        DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("dd/MM/YYYY hh:mm:ss a");    // date format
                                                                        LocalDateTime dtf = LocalDateTime.now();
                                                                        date = dtf1.format(dtf);
                                                                        j_date = date.substring(0,10);
                                                                        j_time = date.substring(11);
                                                                        A.setJ_date(j_date);
                                                                        A.setJ_time(j_time);
                                                                        A.setAcc_type(acc_type);
                                                                        A.setKyc(balance);
                                                                        if(
                                                                            NomineeDAO.regNominee(acc_no) && InfoDAO.regInfo(acc_no, fname, lname, dob) && ImageDAO.regImage(acc_no)
                                                                                && AccountDAO.regAccount(A)
                                                                          )
                                                                        {
                                                                    %>
                                                                        <script>
                                                                            alert("Account No. : <%= L.getAcc_no() %> (Auto-generated by Bank)\nOnline account successfully created with initial deposit \u20B9 <%= balance %>.\nLogin required to enjoy services.");
                                                                            window.location.replace("index.jsp");
                                                                        </script>
                                                                    <%
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                    %>
                                                                        <script>alert("There is an technical error in server.\nTry after some time.");</script>
                                                                    <%
                                                                    }
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