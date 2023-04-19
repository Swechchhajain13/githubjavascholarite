<%-- 
    Document   : Apass
    Created on : Mar 9, 2020, 11:47:19 AM
    Author     : shobhit
--%>

<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>     
<%@page import="java.sql.Connection"%>
<%
    String sname=request.getParameter("sname");
              String semail=request.getParameter("semail");
              String scontact=request.getParameter("scontact");
              String role=request.getParameter("role");
              String address=request.getParameter("address");
              String spassword=request.getParameter("spassword");
              
  
    Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
              PreparedStatement stup=con.prepareStatement ("update staff set semail=? , scontact=? , role=? , address=?, spassword=? where sname=?");
                            
                            stup.setString(1,sname);
                            stup.setString(2, semail);
                            stup.setString(3, scontact);
                            stup.setString(4, role);
                            stup.setString(5, address);
                            stup.setString(6, spassword);
                            
                            stup.executeUpdate();
         //   response.sendRedirect("Password.jsp");
                             { %> <script language="javascript"> alert(" Updated successfully !!!! "); //Java Script alert message </script> <% }

        %>
        
         