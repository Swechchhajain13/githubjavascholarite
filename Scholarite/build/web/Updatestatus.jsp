<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%
      String enrollment=request.getParameter("enrollment");
              String scname=request.getParameter("scname");
              String status=request.getParameter("status");
              String note=request.getParameter("note");
              
            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
              PreparedStatement st2=con.prepareStatement("insert into status values(?,?,?,?)");
                 st2.setString(1,enrollment);
                 st2.setString(2,scname);
                 st2.setString(3,status);
                 st2.setString(4,note);
                 st2.executeUpdate();
                
       //   out.println("Successfully Registered");
      response.sendRedirect("Updatestatus.html");
                 { %> <script language="javascript"> alert(" Updated successfully !!!! "); //Java Script alert message </script> <% }

        %>
        