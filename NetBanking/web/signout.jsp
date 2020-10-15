<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign-Out</title>
    </head>
    <body>
        <%
        session.setAttribute("mobile","null");
        session.setAttribute("username","null");
        response.sendRedirect("index.jsp");
        %>
    </body>
</html>
