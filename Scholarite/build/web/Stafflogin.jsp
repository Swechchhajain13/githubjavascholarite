<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>     
<%@page import="java.sql.Connection"%>
<%
    String semail=request.getParameter("semail");
    String spassword=request.getParameter("spassword");
       
  
    Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             
            
             PreparedStatement st1=con.prepareStatement("select * from  staff where semail=? and spassword=?");
                    st1.setString(1,semail);
                    st1.setString(2,spassword);
                ResultSet rs=st1.executeQuery();
              
                if(rs.next())
                {
                    session.setAttribute("Call",semail);
                  //  out.println("Login successfully");
                   // response.sendRedirect("Student.jsp");
                    { %> <script language="javascript"> alert(" Welcome User !!! You have Logged in successfully"); //Java Script alert message </script> <% }
response.sendRedirect("staff_home.html");
                }
                else
                {//response.sendRedirect("login.html");
                    { %> <script language="javascript" >
                alert("You have entered incorrect Id or password .Try Again! ");</script> <% }
                    
                }

                %>