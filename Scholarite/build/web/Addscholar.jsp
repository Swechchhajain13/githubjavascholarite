<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%
     
            
            String category=request.getParameter("category");
         //  String cates[ ]=request.getParameterValues("category");
            String scname=request.getParameter("scname");
            String desc=request.getParameter("desc");
            String elig=request.getParameter("elig");
            String benefits=request.getParameter("benefits");
            String doc=request.getParameter("doc");
            String select=request.getParameter("select");
            String apply=request.getParameter("apply");
            String more=request.getParameter("more");
            String adate=request.getParameter("adate");
            String  cdate=request.getParameter("cdate");
            String  ddate=request.getParameter("ddate");
            String  idate=request.getParameter("idate");
         
                       
            
            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");

              PreparedStatement st2=con.prepareStatement("insert into scholarship values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
              // for (int i=0;i<cates.length;i++)
               //  st2.setString(1,cates[i]);
                   st2.setString(1,category);

                 
        
                 st2.setString(2,scname);
                 st2.setString(3,desc);
                 st2.setString(4,elig);
                 st2.setString(5,benefits);
                 st2.setString(6,doc);
                 st2.setString(7,select);
                 st2.setString(8,apply);
                 st2.setString(9,more);
                 st2.setString(10,adate);
                 st2.setString(11,cdate);
                 st2.setString(12,ddate);
                 st2.setString(13,idate);
                 
                 
                 
                st2.executeUpdate();
                response.sendRedirect("Addscholar.html");
                 
            { %> <script language="javascript"> alert(" Scholarship added successfully !!!! "); //Java Script alert message </script> <% }

        %>        