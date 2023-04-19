<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%
Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement str=con.prepareStatement("select * from scholarship ");
            ResultSet rsr=str.executeQuery();
                             ArrayList list1=new ArrayList();
                             ArrayList list2=new ArrayList();
                             ArrayList list3=new ArrayList();
                             ArrayList list4=new ArrayList();
                             ArrayList list5=new ArrayList();
                             ArrayList list6=new ArrayList();
                             ArrayList list7=new ArrayList();
                             ArrayList list8=new ArrayList();
                             ArrayList list9=new ArrayList();
                             ArrayList list10=new ArrayList();
                             ArrayList list11=new ArrayList();
                             ArrayList list12=new ArrayList();
                              ArrayList list13=new ArrayList();
  while (rsr.next())
  
      {list1.add(rsr.getString(1));
           list2.add(rsr.getString(2));
           list3.add(rsr.getString(3));
           list4.add(rsr.getString(4)); 
            list5.add(rsr.getString(5));  
           list6.add(rsr.getString(6));   
           list7.add(rsr.getString(7));
           list8.add(rsr.getString(8));
           list9.add(rsr.getString(9));
           list10.add(rsr.getString(10));
           list11.add(rsr.getString(11));
           list12.add(rsr.getString(12));
           list13.add(rsr.getString(13));
      }
  %>
 
<!DOCTYPE html>
<html>
    <style>
        .titletheme{
            color:white;
            font-family: arial;
            font-size: 40px;
            font-style:italic;
            font-weight:bold;
        }
        a{
            text-decoration: none;
            color:blueviolet;
        }
        .tdtheme:hover
        {
            background-color:pink;
            color:orangered;
        }   
        .tdtheme{
               
                font-size: 17px;
                font-family: sans-serif;
                background-color: darkgoldenrod;
                height:30px;
                border-radius:10px;
            }
            *{
        box-sizing: border-box;
      }

       body{
        background-color: white;
        padding: 30px;

      } 
      .box1{
        border-width: 5px;
        border-style:ridge;
        border-color:grey;
        }
      header{
        background-color: blueviolet;
        padding: 10px;
        color: aliceblue;
      }
      .h4{
        color: blueviolet;
      }
      article{
        padding: 30px;
        width: 70%;
      }
      .button{
          color: blueviolet;
          background-color: blueviolet; 
          border: none;
          color: white;
          padding: 10px 25px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
      }
      footer{
        padding: 10px;
        text-align: center;
      }
      @media (max-width:600px){
        article{  
        width: 100%;
        height:auto;
        }
        /* .button{
          color: blueviolet;
          background-color: #4CAF50; 
          border: none;
          color: white;
          padding: 15px 32px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
        } */

      }
        </style>


     
<div style="width:90%; height:400px; opacity :0.7;background-color:white;margin-left:50px">
    
    
       
    
       
   <% for (int i=0;i<list1.size();i++)
   {
       
%>
     <div class="box1">
         <p>
             <header>
                 <centre>
      Category  <br>
      <%=list1.get(i)%> 
                 </centre>
             </header>
        </p>
        <article>
<br>

    <td><font size="4">Name :-   <td><%=list2.get(i)%></td></font></td><br>
    <td><font size="4">Description :- <td><td><%=list3.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Eligibility :-  <td><td><%=list4.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Benefits :-  <td><td><%=list5.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Documents Required :-  <td><td><%=list6.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Selection Criteria   :-  <td><td><%=list7.get(i)%></td><br</td></font></td><br>
    <td><font size="4">How to apply :-  <td><td><%=list8.get(i)%></td><br</td></font></td><br>
     <td><font size="4">More :-  <td><td><%=list9.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Anounce Date :- <td><td><%=list10.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Closing Date :-  <td><td><%=list11.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Defect Verify :-  <td><td><%=list12.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Institute Verify   :-  <td><td><%=list13.get(i)%></td><br</td></font></td><br>
    <br><br>
        </tr> 
        <form action ="deletescholarship.jsp" method="post">
      Scholarship Name<input type="text" name="scname">
      <input type="submit" class="button" onclick="alert('Deleted Successfully')" value="Delete">
        </form>
</article>
     </div>
   
  <%
  }  %>
  
 
     
                        </div>
                        </body>
</html>                           
