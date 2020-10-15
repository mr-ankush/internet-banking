<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TEST CODE !</h1>
        <form method="get" action="test.jsp">
            <input type="date" name="dob" id="dob" onfocus="date()" required/>
            <input type="submit"/>
        </form>
        <%
        String dob = null,y,m,d;
        dob = request.getParameter("dob");
        y = dob.substring(0,4);
        m = dob.substring(5,7);
        d = dob.substring(8);
        %>
        <h3><%= dob %></h3>
        <h3><%= d %>-<%= m %>-<%= y %></h3>
    </body>
</html>
