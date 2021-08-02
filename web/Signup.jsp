<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%
      String username=request.getParameter("username");
              String enrollment=request.getParameter("enrollment");
              String branch=request.getParameter("branch");
              String current_year=request.getParameter("current_year");
              String passing_year=request.getParameter("passing_year");
              String email=request.getParameter("email");
              String contact_no=request.getParameter("contact_no");
              String address=request.getParameter("address");
              String course=request.getParameter("course");
              String password=request.getParameter("password");
              String confirm=request.getParameter("confirm");
            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
              PreparedStatement st2=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?)");
                 st2.setString(1,username);
                 st2.setString(2,enrollment);
                 st2.setString(3,branch);
                 st2.setString(4,current_year);
                 st2.setString(5,passing_year);
                 st2.setString(6,email);
                 st2.setString(7,contact_no);
                  st2.setString(8,address);
                   st2.setString(9,course);
                   st2.setString(10,password);
                   st2.setString(11,confirm);
                 st2.executeUpdate();
              //   out.println("Successfully Registered");
       response.sendRedirect("login.html");
                 { %> <script language="javascript"> alert(" Registered successfully !!!! "); //Java Script alert message </script> <% }

        %>
        
       
