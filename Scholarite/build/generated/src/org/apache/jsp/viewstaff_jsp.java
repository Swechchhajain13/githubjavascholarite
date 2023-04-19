package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;

public final class viewstaff_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

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
  
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style>\r\n");
      out.write("table {\r\n");
      out.write("  width:100%;\r\n");
      out.write("}\r\n");
      out.write("table, th, td {\r\n");
      out.write("  border: 1px solid black;\r\n");
      out.write("  border-collapse: collapse;\r\n");
      out.write("}\r\n");
      out.write("th, td {\r\n");
      out.write("  padding: 15px;\r\n");
      out.write("  text-align: left;\r\n");
      out.write("}\r\n");
      out.write("#t01 tr:nth-child(even) {\r\n");
      out.write("  background-color: #eee;\r\n");
      out.write("}\r\n");
      out.write("#t01 tr:nth-child(odd) {\r\n");
      out.write(" background-color: #fff;\r\n");
      out.write("}\r\n");
      out.write("#t01 th {\r\n");
      out.write("  background-color: darkcyan;\r\n");
      out.write("  color: white;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"background-color:azure;\">\r\n");
      out.write("\r\n");
      out.write("<center>\r\n");
      out.write("<h1>Staff Details</h1>\r\n");
      out.write("</center>\r\n");
      out.write("<table id=\"t01\">\r\n");
      out.write("   <tr>\r\n");
      out.write("    <th>Name</th>\r\n");
      out.write("    <th>Email Address</th> \r\n");
      out.write("    <th>Contact Number</th>\r\n");
      out.write("    <th>Role</th>\r\n");
      out.write("    <th>Address</th>\r\n");
      out.write("    \r\n");
      out.write("    <th>Updation</th>\r\n");
      out.write("  </tr>\r\n");
      out.write("   ");
 for (int i=0;i<list1.size();i++)
   {
       

      out.write("\r\n");
      out.write("     \r\n");
      out.write("      <tr>\r\n");
      out.write("          <td>");
      out.print(list1.get(i));
      out.write("</td>\r\n");
      out.write("           <td>");
      out.print(list2.get(i));
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print(list3.get(i));
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(list4.get(i));
      out.write("</td>\r\n");
      out.write("              <td>");
      out.print(list5.get(i));
      out.write("</td>\r\n");
      out.write("              \r\n");
      out.write("              \r\n");
      out.write("          <td>\r\n");
      out.write("              <form action=\"Deletecode.jsp\" method=\"Post\">\r\n");
      out.write("                 Enter Password <input type=\"text\" name=\"spassword\">\r\n");
      out.write("                 <br>\r\n");
      out.write("              </form>\r\n");
      out.write("              <form action=\"updatestaff.jsp\" method=\"Post\">\r\n");
      out.write("        <input type=\"submit\" value=\"Edit\" >\r\n");
      out.write("        <input type=\"submit\" onclick=\"alert('Deleted Successfully')\" value=\"Delete\">\r\n");
      out.write("     </td>\r\n");
      out.write("     \r\n");
      out.write("  </tr>\r\n");
      out.write("</form>\r\n");
      out.write("  ");

  }  
      out.write("\r\n");
      out.write("  \r\n");
      out.write("   <tr>\r\n");
      out.write("    <td> </td>\r\n");
      out.write("    <td> </td>\r\n");
      out.write("    <td> </td>\r\n");
      out.write("     <td> </td>\r\n");
      out.write("    <td> </td>\r\n");
      out.write("    <td> </td>\r\n");
      out.write("    <td>\r\n");
      out.write("    </table>\r\n");
      out.write("  \r\n");
      out.write("  </form>\r\n");
      out.write("     \r\n");
      out.write("                        </div>\r\n");
      out.write("                        </body>\r\n");
      out.write("</html>          ");
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
