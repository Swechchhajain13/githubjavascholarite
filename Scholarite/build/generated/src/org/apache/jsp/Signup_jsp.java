package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;

public final class Signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      String username=request.getParameter("username");
              String enrollment=request.getParameter("enrollment");
              String branch=request.getParameter("branch");
              String current_year=request.getParameter("current_year");
              String passing_year=request.getParameter("passing_year");
              String email=request.getParameter("email");
              String contact_no=request.getParameter("contact_no");
              String address=request.getParameter("address");
              String course=request.getParameter("course");
              String password=request.getParameter("password");
              String confirm=request.getParameter("confirm");
            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/scholar","root","root");
              PreparedStatement st2=con.prepareStatement("insert into Student values(?,?,?,?,?,?,?,?,?,?,?)");
                 st2.setString(1,username);
                 st2.setString(2,enrollment);
                 st2.setString(3,branch);
                 st2.setString(4,current_year);
                 st2.setString(5,passing_year);
                 st2.setString(6,email);
                 st2.setString(7,contact_no);
                  st2.setString(8,address);
                   st2.setString(9,course);
                   st2.setString(10,password);
                   st2.setString(11,confirm);
                 st2.executeUpdate();
                 out.println("Successfully Registered");
        response.sendRedirect("signup.html");
        
      out.write("\n");
      out.write("        <script>alert(\"Registered Succcessfully\");</script>\n");
      out.write("       \n");
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
