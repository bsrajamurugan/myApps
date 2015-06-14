<%-- 
    Document   : logincheck
    Created on : Jun 7, 2015, 11:17:27 PM
    Author     : Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validate</title>
    </head>
    <body>

        <%
                    if ((session.getAttribute("cuname") == null) || (session.getAttribute("cuname") == "")) {
                        response.sendRedirect("login.jsp");
                    } else {
                %>
                Welcome <%=session.getAttribute("userid")%>
                <a href='logout.jsp'>Log out</a>
                <%
                    }
                %>
    </body>
</html>
