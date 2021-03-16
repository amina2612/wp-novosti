<%-- 
    Document   : novosti
    Created on : 20-Nov-2020, 11:50:37
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.novost"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="util.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${poruka}</h1>
        <c:if test="${korisnik.uloga=='urednik' || korisnik.uloga=='user'}">
            <a href="Logout">Logout</a>
        </c:if> 
        
        <h1>Pregled svih novosti</h1>
        <c:if test="${korisnik.uloga=='urednik'}">
            <a href="dodajNovost.jsp">Dodajte novost</a>
        </c:if>  
<%
        Connection con = null;
        Statement stmt = null;  
        try{
        con = DB.getConnection();
        String upit = "select * from novost";
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(upit);
        List<novost> novosti = new ArrayList();

        HttpSession sesija = request.getSession();
        sesija.setAttribute("novosti", novosti);
        while(rs.next()){  
        int novostid = rs.getInt("novostid");
%>   
        <div class="novost" >          
            <h2><%=rs.getString("naslov") %></h2>
            <p class="preview"><%=rs.getString("preview") %></p>
            <p class="datum"><%=rs.getString("datum")%></p>
            <a href="pregledNovosti.jsp?novostid=<%=novostid%>">Pogledajte više</a>   
        </div>
           
        <%
          novost n = new novost();
          n.setNaslov(rs.getString("naslov"));
          n.setNovostid(rs.getInt("novostid"));
          n.setDatum(rs.getString("datum"));
          n.setPreview(rs.getString("preview"));
          novosti.add(n);
            }
        con.close();
        stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
     <c:if test="${korisnik.uloga!='urednik' && korisnik.uloga!='user'}">
         <a href="index.jsp">Nazad na početak</a>
     </c:if>
    </body>

</html>

