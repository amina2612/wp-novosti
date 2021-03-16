<%-- 
    Document   : pregledNovosti
    Created on : 29-Nov-2020, 14:08:07
    Author     : User
--%>
<%@page import="beans.korisnik"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="util.DB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.novost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Pregled jedne novosti</h1>
        <%
            //System.out.println(request.getParameter("novostid"));
            //<c:out value="${param['novostid']}"></c:out>
            Connection con = null;
            Statement stmt = null;
            String novid = request.getParameter("novostid");  
            String upit = "select * from novost where novostid=" + novid;    
            
            String upitKomentari ="select kom.sadrzaj, kor.ime, kor.prezime, kom.datum, kom.komentarid " 
             + "from komentar as kom inner join korisnik as kor on kom.korisnikid = kor.korisnikid "
             + "where novostid=" + novid;
            HttpSession sesija = request.getSession();
            sesija.setAttribute("novostid", novid);
            //String v = sesija.get;
            //System.out.println(v);
            //sesija.setAttribute("username", request.getParameter("username"));
            
            
            try{
                con = DB.getConnection();
                stmt = con.createStatement();  
                
                ResultSet rs = stmt.executeQuery(upit);    
                if(rs.next()){              
                %>
                <h1><%=rs.getString("naslov")%></h1>
                <p><%=rs.getString("sadrzaj")%></p>
                <p><%=rs.getString("datum")%></p>
                
                <c:if test="${korisnik.uloga=='urednik'}">
                    <a href="ObrisiNovost">Obriši novost</a>
                </c:if>  
                <c:if test="${korisnik.uloga=='urednik'}">
                    <a href="izmijeniNovost.jsp">Izmijeni novost</a>
                </c:if>  
                <%}
                    rs = stmt.executeQuery(upitKomentari);
                    while(rs.next()){        
                %> 
                <div>
                    
                    <span style="font-weight: bold;"><%=rs.getString("kor.ime") + " " + rs.getString("kor.prezime")%></span>
                    <br>
                    <span><%=rs.getString("kom.sadrzaj")%></span>
                    <br>
                    <span><%=rs.getString("kom.datum")%></span>
                    <c:if test="${korisnik.uloga=='urednik'}">
                        <a href="obrisiKomentar.jsp?komentarid=<%=rs.getInt("kom.komentarid")%>">Obriši komentar</a>
                    </c:if>
                </div> <%}%>
                <c:if test="${korisnik.uloga=='user'}">
                    <form action="DodajKomentar" method="POST">
                        <input placeholder="Upišite komentar" name="sadrzajKom">
                        <input type="submit" value="Dodaj komentar">
                    </form>
                </c:if>    
                <a href="novost.jsp">Nazad na pregled svih novosti</a>
        <%//trebamo jos brisanje i dodavanje komentara 
            
          
            }catch(SQLException e){
                System.out.println("Greska: "+ e);
            }
        %>

    </body>
</html>
