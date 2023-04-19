<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%
      String cname=request.getParameter("cname");
              String clname=request.getParameter("clname");
              String cemail=request.getParameter("cemail");
              String message=request.getParameter("message");
              
            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
              PreparedStatement st2=con.prepareStatement("insert into contact values(?,?,?,?)");
                 st2.setString(1,cname);
                 st2.setString(2,clname);
                 st2.setString(3,cemail);
                 st2.setString(4,message);
                 st2.executeUpdate();
                
       //   out.println("Successfully Registered");
       response.sendRedirect("studentpage.html");
                 { %> <script language="javascript"> alert(" Messaged successfully !!!! "); //Java Script alert message </script> <% }

        %>
        
       
