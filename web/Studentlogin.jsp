<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>     
<%@page import="java.sql.Connection"%>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
       
  
    Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             
            
             PreparedStatement st1=con.prepareStatement("select * from  student where email=? and password=?");
                    st1.setString(1,email);
                    st1.setString(2,password);
                ResultSet rs=st1.executeQuery();
              
                if(rs.next())
                {
                    session.setAttribute("Call",email);
                  //  out.println("Login successfully");
                   response.sendRedirect("studentpage.html");
                    { %> <script language="javascript"> alert(" Welcome User !!! You have Logged in successfully"); //Java Script alert message </script> <% }

                }
                else
                {//response.sendRedirect("login.html");
                    { %> <script language="javascript" >
                alert("You have entered incorrect Id or password .Try Again! ");</script> <% }
                    
                }

                %>