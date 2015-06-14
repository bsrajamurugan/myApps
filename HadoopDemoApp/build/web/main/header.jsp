<%-- 
    Document   : home
    Created on : Jun 7, 2015, 12:04:24 AM
    Author     : raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
        <link rel="stylesheet" type="text/css" href="../css/header.css" >
    </head>
    <body>
        <header>
            <div class="nav">
                <ul>
                    <li class="home"><a class="${pageContext.request.servletPath == "/main/home.jsp" ? 'active' : 'none'}" href="home.jsp">Home</a></li>
                    <li class="Reports"><a class = "${pageContext.request.servletPath == "/main/reports.jsp" ? 'active' : 'none'}" href="reports.jsp">Reports</a></li>
                    <li class="admin"><a class = "${pageContext.request.servletPath == "/main/admin.jsp" ? 'active' : 'none'}"  href="#">Admin</a></li>
                    <li class="about"><a class = "${pageContext.request.servletPath == "/main/about.jsp" ? 'active' : 'none'}"  href="#">About</a></li>
                </ul>

                <%--<%@include file="logincheck.jsp" %>--%>
                <c:if test="${cookie.cuname == null && cookie.cuname != ''}">
                    <%  response.sendRedirect("login.jsp");%>
                </c:if>
            </div>

            <div id="divlogoff" class="logoff">
                <a href="logoff.jsp"> logoff</a>
            </div>
        </header>
    </body>
</html>
