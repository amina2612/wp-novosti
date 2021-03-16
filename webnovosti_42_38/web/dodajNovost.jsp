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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="DodajNovost" method="POST">
        <h1>Novost</h1>
            <div><label>Naslov: </label><input type="text" name="naslov"></div>
            <div><label>Sadržaj: </label><input type="text" name="sadrzaj"></div>
            <div><label>Preview: </label><input type="text" name="preview"></div>
            <input type="submit" value="Dodaj novost">
        </form>
    </body>
</html>
