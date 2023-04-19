package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;

public final class viewstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
             PreparedStatement str=con.prepareStatement("select * from student ");
            ResultSet rsr=str.executeQuery();
                             ArrayList list1=new ArrayList();
                             ArrayList list2=new ArrayList();
                             ArrayList list3=new ArrayList();
                             ArrayList list4=new ArrayList();
                             ArrayList list5=new ArrayList();
                             ArrayList list6=new ArrayList();
  while (rsr.next())
  
      {list1.add(rsr.getString(1));
           list2.add(rsr.getString(2));
           list3.add(rsr.getString(3));
           list4.add(rsr.getString(4)); 
            list5.add(rsr.getString(5));  
           list6.add(rsr.getString(6));   
      }
  
      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<style>\n");
      out.write("table {\n");
      out.write("  width:100%;\n");
      out.write("}\n");
      out.write("table, th, td {\n");
      out.write("  border: 1px solid black;\n");
      out.write("  border-collapse: collapse;\n");
      out.write("}\n");
      out.write("th, td {\n");
      out.write("  padding: 15px;\n");
      out.write("  text-align: left;\n");
      out.write("}\n");
      out.write("#t01 tr:nth-child(even) {\n");
      out.write("  background-color: #eee;\n");
      out.write("}\n");
      out.write("#t01 tr:nth-child(odd) {\n");
      out.write(" background-color: #fff;\n");
      out.write("}\n");
      out.write("#t01 th {\n");
      out.write("  background-color: darkcyan;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body style=\"background-color:azure;\">\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("<h1>Student Details</h1>\n");
      out.write("</center>\n");
      out.write("<table id=\"t01\">\n");
      out.write("   <tr>\n");
      out.write("    <th>Name</th>\n");
      out.write("    <th>Enrollment</th> \n");
      out.write("    <th>Branch</th>\n");
      out.write("    <th>Year</th>\n");
      out.write("    <th>Graduation Year</th>\n");
      out.write("    <th>Email</th>\n");
      out.write("    <th>Updation</th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("     <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("    <td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("       \n");
      out.write("   ");
 for (int i=0;i<list1.size();i++)
   {
       

      out.write("\n");
      out.write("     \n");
      out.write("      <tr>\n");
      out.write("          <td>");
      out.print(list1.get(i));
      out.write("</td>\n");
      out.write("           <td>");
      out.print(list2.get(i));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(list3.get(i));
      out.write("</td>\n");
      out.write("             <td>");
      out.print(list4.get(i));
      out.write("</td>\n");
      out.write("              <td>");
      out.print(list5.get(i));
      out.write("</td>\n");
      out.write("               <td>");
      out.print(list6.get(i));
      out.write("</td>\n");
      out.write("          <td>\n");
      out.write("              \n");
      out.write("        \n");
      out.write("    <button type=\"button\" onclick=\"alert('Deleted Successfully')\">Delete</button>\n");
      out.write("     </td>\n");
      out.write("  </tr>\n");
      out.write("  ");

  }  
      out.write("\n");
      out.write("  \n");
      out.write("  <tr>\n");
      out.write("    <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("     <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("    <td> </td>\n");
      out.write("    <td>\n");
      out.write("    </table>\n");
      out.write("  \n");
      out.write("  </form>\n");
      out.write("     \n");
      out.write("                        </div>\n");
      out.write("                        </body>\n");
      out.write("</html>                           ");
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
