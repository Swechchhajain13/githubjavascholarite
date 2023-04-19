<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%
Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement str=con.prepareStatement("select * from status ");
            ResultSet rsr=str.executeQuery();
                             ArrayList list1=new ArrayList();
                             ArrayList list2=new ArrayList();
                             ArrayList list3=new ArrayList();
                             ArrayList list4=new ArrayList();
                           ;
                             
  while (rsr.next())
  
      {list1.add(rsr.getString(1));
           list2.add(rsr.getString(2));
           list3.add(rsr.getString(3));
           list4.add(rsr.getString(4)); 
              
              
      }
  %>
 
<!DOCTYPE html>
<html>
<head>
<style>
table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: darkcyan;
  color: white;
}
</style>
</head>
<body style="background-color:azure;">

<center>
<h1>Scholarship Application status</h1>
</center>
<table id="t01">
   <tr>
    <th>Enrollment no</th>
    <th>Scholarship Name</th> 
    <th>Status</th>
    <th>Note</th>
   
    
  </tr>
   <% for (int i=0;i<list1.size();i++)
   {
       
%>
     
      <tr>
          <td><%=list1.get(i)%></td>
           <td><%=list2.get(i)%></td>
            <td><%=list3.get(i)%></td>
             <td><%=list4.get(i)%></td>
       
              
              
    
                
            
     
  </tr>
  <%
  }  %>
  
   
    </table>
  
  </form>
     
                        </div>
                        </body>
</html>          
