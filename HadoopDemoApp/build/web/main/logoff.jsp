<%-- 
    Document   : logoff
    Created on : Jun 7, 2015, 11:13:19 PM
    Author     : Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged Off</title>
    </head>
    <body>
        <%
            Cookie  cuname = new Cookie("cuname",null);
            cuname.setMaxAge(0);
            session.setAttribute("sessUname", null);
         %>   
        <h1>Thank you!</h1>
        Do you want Re-login? <a href='login.jsp'>login again</a>
    </body>
</html>
