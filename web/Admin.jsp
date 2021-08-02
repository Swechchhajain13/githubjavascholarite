<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>     
<%@page import="java.sql.Connection"%>
<%
    String adminid=request.getParameter("adminid");
    String password=request.getParameter("password");
       
  
    Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             
            
             PreparedStatement st1=con.prepareStatement("select * from admin  where adminid=? and password=?");
                    st1.setString(1,adminid);
                    st1.setString(2,password);
                ResultSet rs=st1.executeQuery();
              
                if(rs.next())
                {
                    session.setAttribute("Call",adminid);
                  //  out.println("Login successfully");
                 //  response.sendRedirect(".jsp");
                    { %> <script language="javascript"> alert("Welcome user !!! You have logged in successfully"); //Java Script alert message </script> <% }

response.sendRedirect("admin_home.html");
             
                }
                
                else{
                
             //   response.sendRedirect("Admin.html");
                { %> <script language="javascript" >
                alert("You have entered incorrect Id or password .Try Again! ");</script> <% }
                    
                
                 //  response.sendRedirect("Admin.html");
                }
                %>