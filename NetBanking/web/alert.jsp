// 404
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message</title>
    </head>
    <body>
        <script>
            alert("Page not Found on server.\nLogin again to use net-banking.");
            window.location.replace("index.jsp");
        </script>
    </body>
</html>