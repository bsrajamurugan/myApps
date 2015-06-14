<%-- 
    Document   : reports
    Created on : Jun 8, 2015, 1:08:20 AM
    Author     : Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="../css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="../css/tableutils.css" rel="stylesheet" type="text/css"/>

        <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="../js/jquery-ui.js" type="text/javascript"></script>
        <script src="../js/tableutils.js" type="text/javascript"></script>
        <script src="../js/highcharts.js"></script>
        <script src="../js/modules/exporting.js"></script>

        <link rel="stylesheet" type="text/css" href="../css/common.css" >
        <script src="../js/reports.js" type="text/javascript"></script>

        <title>Reports</title>
    </head>
    <body>
        <%@include  file="header.jsp" %>

        <div class ="main">
            <div id="chart1" class="charts" style="min-width: 700px; height: 300px; margin: 0 auto"></div>
            <div id="divdggrid">
                <h1>This is main content</h1>
            </div>
        </div>

        <div class="right">

        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
