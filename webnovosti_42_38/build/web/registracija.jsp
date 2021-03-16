<%-- 
    Document   : registracija
    Created on : 20-Nov-2020, 11:37:41
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/index.css" type="text/css" />
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/c33798638b.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
        <h1 style="margin-top:-100px;margin-bottom:35px;">Registracija</h1>
        <div class="poruka" style="margin-top:-5px;margin-bottom:-15px; "><span style="text-align:center;">${poruka}</span></div>
        <form action="Registracija" method="POST">
            <input type="text" name="ime" placeholder="Ime"><br> 
            <input type="text" name="prezime" placeholder="Prezime"><br>
            <input type="text" name="email" placeholder="Email"><br>
            <input type="text" name="username" placeholder="Username"><br>
            <input type="password" name="password" placeholder="Password"><br>
            
            <input type="submit" value="Registruj se">    
        </form>  
            <a href="index.jsp" class="nazad" title="Nazad na početnu stranicu"><i class="fas fa-arrow-left"></i></a>   
           </div>
    </body>
</html>
