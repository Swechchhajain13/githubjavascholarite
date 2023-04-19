package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;

public final class government_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
             PreparedStatement str=con.prepareStatement("select * from scholarship where category='GOVERNMENT' ");
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
  
      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <style>\n");
      out.write("        .titletheme{\n");
      out.write("            color:white;\n");
      out.write("            font-family: arial;\n");
      out.write("            font-size: 40px;\n");
      out.write("            font-style:italic;\n");
      out.write("            font-weight:bold;\n");
      out.write("        }\n");
      out.write("        a{\n");
      out.write("            text-decoration: none;\n");
      out.write("            color:blueviolet;\n");
      out.write("        }\n");
      out.write("        .tdtheme:hover\n");
      out.write("        {\n");
      out.write("            background-color:pink;\n");
      out.write("            color:orangered;\n");
      out.write("        }   \n");
      out.write("        .tdtheme{\n");
      out.write("               \n");
      out.write("                font-size: 17px;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                background-color: darkgoldenrod;\n");
      out.write("                height:30px;\n");
      out.write("                border-radius:10px;\n");
      out.write("            }\n");
      out.write("            *{\n");
      out.write("        box-sizing: border-box;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("       body{\n");
      out.write("        background-color: white;\n");
      out.write("        padding: 30px;\n");
      out.write("\n");
      out.write("      } \n");
      out.write("      .box1{\n");
      out.write("        border-width: 5px;\n");
      out.write("        border-style:double;\n");
      out.write("        border-color: peru;\n");
      out.write("        }\n");
      out.write("      header{\n");
      out.write("        background-color: blueviolet;\n");
      out.write("        padding: 10px;\n");
      out.write("        color: aliceblue;\n");
      out.write("      }\n");
      out.write("      .h4{\n");
      out.write("        color: blueviolet;\n");
      out.write("      }\n");
      out.write("      article{\n");
      out.write("        padding: 30px;\n");
      out.write("        width: 70%;\n");
      out.write("      }\n");
      out.write("      footer{\n");
      out.write("        padding: 10px;\n");
      out.write("        text-align: center;\n");
      out.write("      }\n");
      out.write("      @media (max-width:600px){\n");
      out.write("        article{  \n");
      out.write("        width: 100%;\n");
      out.write("        height:auto;\n");
      out.write("        }\n");
      out.write("        /* .button{\n");
      out.write("          color: blueviolet;\n");
      out.write("          background-color: #4CAF50; \n");
      out.write("          border: none;\n");
      out.write("          color: white;\n");
      out.write("          padding: 15px 32px;\n");
      out.write("          text-align: center;\n");
      out.write("          text-decoration: none;\n");
      out.write("          display: inline-block;\n");
      out.write("          font-size: 16px;\n");
      out.write("        } */\n");
      out.write("\n");
      out.write("      }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("     \n");
      out.write("<div style=\"width:90%; height:400px; opacity :0.7;background-color:white;margin-left:50px\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("       \n");
      out.write("    \n");
      out.write("       \n");
      out.write("   ");
 for (int i=0;i<list1.size();i++)
   {
       

      out.write("\n");
      out.write("     <div class=\"box1\">\n");
      out.write("         <article>\n");
      out.write("<td><font size=\"5\"><bold><h3>Category :-</h3> </bold><td>");
      out.print(list1.get(i));
      out.write("</td></font></td><br>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("    <td><font size=\"5\">Name :-   <td>");
      out.print(list2.get(i));
      out.write("</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Description :- <td><td>");
      out.print(list3.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Eligibility :-  <td><td>");
      out.print(list4.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Benefits :-  <td><td>");
      out.print(list5.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Documents Required :-  <td><td>");
      out.print(list6.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Selection Criteria   :-  <td><td>");
      out.print(list7.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">How to apply :-  <td><td>");
      out.print(list8.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("     <td><font size=\"5\">More :-  <td><td>");
      out.print(list9.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Anounce Date :- <td><td>");
      out.print(list10.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Closing Date :-  <td><td>");
      out.print(list11.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Defect Verify :-  <td><td>");
      out.print(list12.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <td><font size=\"5\">Institute Verify   :-  <td><td>");
      out.print(list13.get(i));
      out.write("</td><br</td></font></td><br>\n");
      out.write("    <br><br>\n");
      out.write("        </tr> \n");
      out.write("        <form action =\"Deletecode.jsp\" method=\"post\">\n");
      out.write("      Scholarship Name<input type=\"text\" name=\"snm\">\n");
      out.write("      <input type=\"submit\" value=\"Delete\">\n");
      out.write("      \n");
      out.write("</article>\n");
      out.write("     </div>\n");
      out.write("   </form>\n");
      out.write("  ");

  }  
      out.write("\n");
      out.write("  \n");
      out.write(" \n");
      out.write("     \n");
      out.write("                        </div>\n");
      out.write("                        </body>\n");
      out.write("</html>                           \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
