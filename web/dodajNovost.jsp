<%-- 
    Document   : dodajNovost
    Created on : 30-Nov-2020, 22:11:27
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/index.css" type="text/css" />
        <script src="https://kit.fontawesome.com/c33798638b.js" crossorigin="anonymous"></script>
        <title>Dodavanje novosti</title>
    </head>
    <body><div class="container">
        <h1 style="margin-top:-100px;margin-bottom:35px;">Dodavanje novosti</h1>
        <div class="poruka" style="margin-top:-5px;margin-bottom:-15px;left:20%;"><span style="text-align:center;">${poruka}</span></div>
        <form action="DodajNovost" method="POST">
            <input type="text" name="naslov" placeholder="Naslov">
            <input type="text" name="preview" placeholder="Pregled sadržaja">
            <textarea class="txtarea" name="sadrzaj" rows="10" cols="50" placeholder="Sadržaj novosti"></textarea>
            <input type="submit" value="Dodaj novost" class="defaultDugme">
        </form>
        <a href="novost.jsp" class="nazad" title="Nazad na pregled novosti"><i class="fas fa-arrow-left"></i></a></div>
    </body>
</html>
