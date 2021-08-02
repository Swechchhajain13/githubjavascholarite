<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%
Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement str=con.prepareStatement("select * from scholarship where category='INSTITUTE' ");
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
      .button{
          color: blueviolet;
          background-color: blueviolet; 
          border: none;
          color: white;
          padding: 15px 32px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 20px;
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
        <!DOCTYPE html>
<html lang="en">
<head>
    <title>Scholarite</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=DM+Sans:300,400,700|Indie+Flower" rel="stylesheet">
    

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">
    <!-- <link rel="stylesheet" href="css/login.css"> -->
 
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    
    <div>
    <h3>Institute Scholarship</h3>


     
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

<td><strong><font size="4"><b>Name :-   </b><td><%=list2.get(i)%></td></strong></font></td><br>
<td><font size="4"><b> Description :-   </b> <td></strong><td><%=list3.get(i)%></td><br</td></font></td><br>
    
        </tr> 
        
        <centre>    <input type="button" class="button" onclick="location.href='Application.html';" value="Apply Now"/></centre>
     
      

     </div>
   </form>
  <%
  }  %>
  
 
     
                        </div>
                        </body>
</html>                           