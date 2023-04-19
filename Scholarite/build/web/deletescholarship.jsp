<%-- 
    Document   : Deletecode
    Created on : Mar 10, 2020, 10:29:29 AM
    Author     : shobhit
--%>

<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%
    String scname=request.getParameter("scname");
    Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement strd=con.prepareStatement("delete  from scholarship where scname=? ");
             strd.setString(1,scname);
             strd.executeUpdate();
            response.sendRedirect("viewscholarship.jsp");
             %>
