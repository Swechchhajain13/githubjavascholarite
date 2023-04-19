<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%
Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement str=con.prepareStatement("select * from contact ");
            ResultSet rsr=str.executeQuery();
                             ArrayList list1=new ArrayList();
                             ArrayList list2=new ArrayList();
                             ArrayList list3=new ArrayList();
                             ArrayList list4=new ArrayList();
                             
  while (rsr.next())
  
      {list1.add(rsr.getString(1));
           list2.add(rsr.getString(2));
           list3.add(rsr.getString(3));
           list4.add(rsr.getString(4)); 
            
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
        border-style:double;
        border-color: peru;
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
    
    
       
    <h1>Messages</h1>
       
   <% for (int i=0;i<list1.size();i++)
   {
       
%>
     <div class="box1">
         <article>
             
<td><font size="4"><bold><h3>First Name :-</h3> </bold><td><%=list1.get(i)%></td></font></td><br>
<br>

    <td><font size="4"> Last Name :-   <td><%=list2.get(i)%></td></font></td><br>
    <td><font size="4">Email :- <td><td><%=list3.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Message :-  <td><td><%=list4.get(i)%></td><br</td></font></td><br>
    
        </tr> 
        <input type="button" onclick="location.href='#';" value="Give Response"/>
      
</article>
     </div>
   </form>
  <%
  }  %>
  
 
     
                        </div>
                        </body>
</html>                           
