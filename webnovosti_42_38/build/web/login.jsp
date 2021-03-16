<%-- 
    Document   : login
    Created on : 20-Nov-2020, 11:37:29
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/index.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container">
        <h1 style="margin-top:-19px;margin-bottom:35px;">Log in</h1>
        
        <div class="poruka" style="margin-top:-5px;margin-bottom:-15px; "><span style="text-align:center;">${poruka}</span></div>
        <form action="Login" method="POST">
            <input type="text" name="username" placeholder="Username">        
            <input type="password" name="password" placeholder="Password">
            <input type="submit" value="Login" class="defaultDugme">      
        </form>
        
        <a href="registracija.jsp" class="loginpage">Nemate korisnički račun? Registrujte se!</a> <br>        
        <a href="novost.jsp" class="loginpage">Logirajte se kao gost.</a>
        
        </div>
    </body>
</html>
