<%-- 
    Document   : izmijeniNovost
    Created on : 30-Nov-2020, 22:35:30
    Author     : User
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="util.DB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="IzmijeniNovost" method="POST">
            <h1>Novost</h1>           
        <%
            Connection con = null;
            Statement stmt = null;
            
            HttpSession sesija = request.getSession();
            String novid =(String) sesija.getAttribute("novostid");            
            String upit = "select * from novost where novostid=" + novid;  
            
            try{
                con = DB.getConnection();
                stmt = con.createStatement();                
                ResultSet rs = stmt.executeQuery(upit);
                while(rs.next()){
                System.out.println(rs.getString("naslov"));
        %>
            <div><label>Naslov: </label><input type="text" name="naslov" value="<%=rs.getString("naslov")%>"></div>
            <div><label>Sadržaj: </label><input type="text" name="sadrzaj" value="<%=rs.getString("sadrzaj")%>"></div>
            <div><label>Preview: </label><input type="text" name="preview" value="<%=rs.getString("preview")%>"></div>
        <%
            }}catch(SQLException e){
            System.out.println("Greska: " + e);
}
        %>
            <input type="submit" value="Izmijeni novost">
        </form>
    </body>
</html>
