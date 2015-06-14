<%-- 
    Document   : login
    Created on : Jun 7, 2015, 9:09:11 PM
    Author     : Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Welcome!</title>

        <!--<link rel="stylesheet" type="text/css" href="css/common1.css" >-->
        <link rel="stylesheet" type="text/css" href="css/login.css" >

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/login.js"></script>

    </head>
    <body>
        <div class="container">
            <header>
                <h1> <strong>Demo Application</strong></h1>
            </header>

            <section class="main">
                <form class="loginform"  action="LoginServlet" method="post">
                    <h1><span class="log-in">Log in</span></h1>
                    <p class="float">
                        <label class="icon-user">Username</label>
                        <input type="text" name="login" placeholder="Username or email">
                    </p>
                    <p class="float">
                        <label class="icon-lock"> Password</label>
                        <input type="password" name="password" placeholder="Password" class="showpassword">
                    </p>
                    <p class="clearfix"> 
                        <input type="submit" class="loginbutton" name="submit" value="Continue">
                    </p>
                </form>​​
            </section>
        </div>
    </body>
</html>
