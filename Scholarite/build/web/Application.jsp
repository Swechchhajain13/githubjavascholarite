<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%
     
            String schname=request.getParameter("schname");
            String stuname=request.getParameter("stuname");
         //  String cates[ ]=request.getParameterValues("category");
            String stuemail=request.getParameter("stuemail");
            String stucontact=request.getParameter("stucontact");
            String gender=request.getParameter("gender");
            String category=request.getParameter("category");
            String phsy=request.getParameter("phsy");
            String religion=request.getParameter("religion");
            String aadhar=request.getParameter("aadhar");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            String state=request.getParameter("state");
            String pincode=request.getParameter("pincode");
            String  bboard=request.getParameter("bboard");
            String  bschname=request.getParameter("bschname");
            String  bpyear=request.getParameter("bpyear");
            String  bcgpa=request.getParameter("bcgpa");
            String  degree=request.getParameter("degree");
            String  stream=request.getParameter("stream");
            String  iname=request.getParameter("iname");
            String  afee=request.getParameter("afee");
            String  fname=request.getParameter("fname");
            String  income=request.getParameter("income");
            String  occupation=request.getParameter("occupation");
            String  aname=request.getParameter("aname");
            String  anumber=request.getParameter("anumber");
            String  icode=request.getParameter("icode");
            String  bankname=request.getParameter("bankname");
            String  file=request.getParameter("file");
         //String file=request.getParameter("file");
        // out.print("First Name :"+fname+"myloc="+file);
                


       
            
           Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");

              PreparedStatement st2=con.prepareStatement("insert into application values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
              // for (int i=0;i<cates.length;i++)
               //  st2.setString(1,cates[i]);
              st2.setString(1,schname);
                   st2.setString(2,stuname);
st2.setString(3,stuemail);
st2.setString(4,stucontact);

st2.setString(5,gender);
st2.setString(6,category);
st2.setString(7,phsy);
st2.setString(8,religion);
st2.setString(9,aadhar);
st2.setString(10,address);
st2.setString(11,country);
st2.setString(12,state);
st2.setString(13,pincode);
st2.setString(14,bboard);
st2.setString(15,bschname);
st2.setString(16,bpyear);
st2.setString(17,bcgpa);
st2.setString(18,degree);
st2.setString(19,stream);
st2.setString(20,iname);
         st2.setString(21,afee);
st2.setString(22,fname);
st2.setString(23,income);
st2.setString(24,occupation);
st2.setString(25,aname);
st2.setString(26,anumber);
st2.setString(27,icode);
st2.setString(28,bankname);
st2.setString(29,file);


                 
        
               
                 
                 
            response.sendRedirect("Application.html");    
      st2.executeUpdate();
                 
            { %> <script language="javascript"> alert(" Applied successfully !!!! "); //Java Script alert message </script> <% }

        %>     
        