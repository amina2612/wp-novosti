<%-- 
    Document   : izmjena
    Created on : 20-Nov-2020, 22:57:09
    Author     : User
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="Izmjena" method="POST">
        
            <div>Unesite ID korisnika čije podatke želite mijenjati: </div>
            
            <div><label>ID: </label> <input type="text" name="korisnikid"></div>  
            
            <div>Unesite njegove podatke koje želite izmijeniti: </div>         
            <div><label>Ime: </label> <input type="text" name="ime"></div>
            <div><label>Prezime: </label> <input type="text" name="prezime"></div>
            <div><label>Email: </label><input type="text" name="email"></div>          
            <div><label>Uloga: </label> 
                <select id="uloga" name="uloga" >
                    <option disabled selected value>...</option>
                    <option value="admin">Admin</option>                
                    <option value="urednik">Urednik</option>
                    <option value="user">User</option>
                </select></div>
            <div><label>Aktivan: </label> 
                <select id="aktivan" name="aktivan">
                    <option disabled selected value>...</option>
                    <option value="aktivan">Aktivan</option>                
                    <option value="neaktivan">Neaktivan</option>
                </select></div>
            <input type="submit" value="Izmijenite podatke">        
        </form>
    </body>
</html>
