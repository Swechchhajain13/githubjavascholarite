<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%
Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement str=con.prepareStatement("select * from application ");
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
                              ArrayList list14=new ArrayList();
                              ArrayList list15=new ArrayList();
                              ArrayList list16=new ArrayList();
                              ArrayList list17=new ArrayList();
                              ArrayList list18=new ArrayList();
                              ArrayList list19=new ArrayList();
                              ArrayList list20 =new ArrayList();
                              ArrayList list21 =new ArrayList();
                        
                              ArrayList list22 =new ArrayList();
                              ArrayList list23 =new ArrayList();
                              ArrayList list24 =new ArrayList();
                              ArrayList list25 =new ArrayList();
                              ArrayList list26 =new ArrayList();
                               ArrayList list27  =new ArrayList();
                              ArrayList list28 =new ArrayList();
                              ArrayList list29 =new ArrayList();
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
           list14.add(rsr.getString(14));
           list15.add(rsr.getString(15));
           list16.add(rsr.getString(16));
           list17.add(rsr.getString(17));
           list18.add(rsr.getString(18));
           list19.add(rsr.getString(19));
           list20.add(rsr.getString(20));
           list21.add(rsr.getString(21));
           list22.add(rsr.getString(22));
           list23.add(rsr.getString(23));
           list24.add(rsr.getString(24));
           list25.add(rsr.getString(25));
           list26.add(rsr.getString(26));
           list27.add(rsr.getString(27));
           list28.add(rsr.getString(28));
           list29.add(rsr.getString(29));
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
        border-color: violet;
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
          background-color:blueviolet; 
          border: none;
          color: white;
          padding: 15px 32px;
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
        

      }
        </style>
        <script>
            function myFunction(){
                document.getElementById("approved").style.color="green";
                document.getElementById("pending").style.color="Orange";
                document.getElementById("rejected").style.color="red";
                
            }
            </script>


     
<div style="width:90%; height:400px; opacity :0.7;background-color:white;margin-left:50px">
    
    
    <h1 style=Applications</centre></h1>
    
       
   <% for (int i=0;i<list1.size();i++)
   {
       
%>
     <div class="box1">
         
             <p>
             <header>
                 <centre>
      Scholarship Name  <br>
      <%=list1.get(i)%> 
                 </centre>
             </header>
        </p>
        <article>
<td><font size="4"><bold><h3>Student Name :-</h3> </bold><td><%=list2.get(i)%></td></font></td><br>
<br>

      
    <td><font size="4">Email :-   <td><%=list3.get(i)%></td></font></td><br>
    <td><font size="4">Contact :- <td><td><%=list4.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Gender :-  <td><td><%=list5.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Category:-  <td><td><%=list6.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Physically Challenged :-  <td><td><%=list7.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Religion   :-  <td><td><%=list8.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Aadhar Number:-  <td><td><%=list9.get(i)%></td><br</td></font></td><br>
     <td><font size="4">Address :-  <td><td><%=list10.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Country  :- <td><td><%=list11.get(i)%></td><br</td></font></td><br>
    <td><font size="4">State :-  <td><td><%=list12.get(i)%></td><br</td></font></td><br>
 
    <td><font size="4">Pincode :-  <td><td><%=list13.get(i)%></td><br</td></font></td><br>
    
    <td><font size="4">12th Passing Year :-  <td><td><%=list16.get(i)%></td><br</td></font></td><br>
    <td><font size="4">12th Percentage :-  <td><td><%=list17.get(i)%></td><br</td></font></td><br>
    
    <td><font size="4">Degree :-  <td><td><%=list18.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Father's name :-  <td><td><%=list22.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Father's income:-  <td><td><%=list23.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Father's occupation :-  <td><td><%=list24.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Account Holder name:-  <td><td><%=list25.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Account  number :-  <td><td><%=list26.get(i)%></td><br</td></font></td><br>
    <td><font size="4">IFCS code :-  <td><td><%=list27.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Bank name :-  <td><td><%=list28.get(i)%></td><br</td></font></td><br>
    <td><font size="4">Files  :-  <td><td><td><img src="documents/<%=list29.get(i)%>" width="400" heght="500" alt="Pdf/Doc File"></td><br</td></font></td><br>
    <br><br>
        </tr> 
        
        <input type="button"class="button"  onclick="location.href='Updatestatus.html';" value="Update Status"/>
      
       
</article>
     </div>
   </form>
  <%
  }  %> 
  
 
     
                        </div>
                        </body>
</html>                           

