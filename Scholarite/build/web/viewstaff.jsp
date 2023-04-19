<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%
Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement str=con.prepareStatement("select * from staff ");
            ResultSet rsr=str.executeQuery();
                             ArrayList list1=new ArrayList();
                             ArrayList list2=new ArrayList();
                             ArrayList list3=new ArrayList();
                             ArrayList list4=new ArrayList();
                             ArrayList list5=new ArrayList();
                             
  while (rsr.next())
  
      {list1.add(rsr.getString(1));
           list2.add(rsr.getString(2));
           list3.add(rsr.getString(3));
           list4.add(rsr.getString(4)); 
            list5.add(rsr.getString(5));  
              
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
<h1>Staff Details</h1>
</center>
<table id="t01">
   <tr>
    <th>Name</th>
    <th>Email Address</th> 
    <th>Contact Number</th>
    <th>Role</th>
    <th>Address</th>
    
    <th>Updation</th>
  </tr>
   <% for (int i=0;i<list1.size();i++)
   {
       
%>
     
      <tr>
          <td><%=list1.get(i)%></td>
           <td><%=list2.get(i)%></td>
            <td><%=list3.get(i)%></td>
             <td><%=list4.get(i)%></td>
              <td><%=list5.get(i)%></td>
              
              
          <td>
                
              <form action="Deletecode.jsp" method="Post">
                 Enter Password <input type="text" name="spassword">
                 
           <input type="submit" onclick="alert('Deleted Successfully')" value="Delete">
              </form>
              
              <input type="button" onclick="location.href='Editstaff.html';" value="Edit"/>
     </td>
             
                
     
  </tr>
  <%
  }  %>
  
   <tr>
    <td> </td>
    <td> </td>
    <td> </td>
     <td> </td>
    <td> </td>
    <td> </td>
    
    </table>
  
  </form>
     
                        </div>
                        </body>
</html>          