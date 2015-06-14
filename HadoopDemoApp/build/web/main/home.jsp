<%-- 
    Document   : home
    Created on : Jun 7, 2015, 12:04:24 AM
    Author     : raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="../css/common.css" >
        <script type="text/javascript" src="../js/jquery.js"></script>
        <script type="text/javascript" src="../js/login.js"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="main">
           
            This is main content     
        </div>
         <div class="right">
            
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
