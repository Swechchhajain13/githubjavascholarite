<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%
      String sname=request.getParameter("sname");
              String semail=request.getParameter("semail");
              String scontact=request.getParameter("scontact");
              String role=request.getParameter("role");
              String address=request.getParameter("address");
              String spassword=request.getParameter("spassword");
              
            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
              PreparedStatement st2=con.prepareStatement("insert into staff values(?,?,?,?,?,?)");
                 st2.setString(1,sname);
                 st2.setString(2,semail);
                 st2.setString(3,scontact);
                 st2.setString(4,role);
                 st2.setString(5,address);
                 st2.setString(6,spassword);
                 
                 st2.executeUpdate();
              //   out.println("Successfully Registered");
       response.sendRedirect("viewstaff.jsp");
                 { %> <script language="javascript"> alert(" Staff added successfully !!!! "); //Java Script alert message </script> <% }

        %>
        
       

