/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-01-01 03:40:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class mylist2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html style=\"margin: 0;\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("\tcontent=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("\tcontent=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\">\r\n");
      out.write("<meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("<meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n");
      out.write("<meta http-equiv=\"Cache-Control\"\r\n");
      out.write("\tcontent=\"no-cache, no-store, must-revalidate\">\r\n");
      out.write("<meta http-equiv=\"Pragma\" content=\"no-cache\">\r\n");
      out.write("<meta http-equiv=\"Expires\" content=\"0\">\r\n");
      out.write("<title>设备列表</title>\r\n");
      out.write("<link href=\"./css/layer.css\" type=\"text/css\" rel=\"styleSheet\"\r\n");
      out.write("\tid=\"layermcss\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/layer.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/new.css\">\r\n");
      out.write("<link type=\"text/css\" href=\"./css/rzr_main_1.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"./css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"./css/wx/list_page.css\" rel=\"stylesheet\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\tfunction showPage() {\r\n");
      out.write("\r\n");
      out.write("\t\twindow.location.href = \"/wx/haire/index.html\";\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<style type=\"css/text\">\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body style=\"margin: 0;\">\r\n");
      out.write("\t<div class=\"page1\">\r\n");
      out.write("\t\t<div id=\"mainmenu\">\r\n");
      out.write("\t\t\t<div class=\"row\"\r\n");
      out.write("\t\t\t\tstyle=\"border-radius: 5px; background-color: #58e1c8;\">\r\n");
      out.write("\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-2\" style=\"padding: 0px;\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"./image/jhq_w.png\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 100%; margin-top: 18%; margin-left: 50%;\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-5\"\r\n");
      out.write("\t\t\t\t\t\tstyle=\"margin-left: 5%; padding: 5% 0% 5% 10%;\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"row\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"color: white; font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;\">空气净化器</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"row\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"color: rgb(168, 165, 185); font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;\">&nbsp;</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"row\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"font-family: 'Microsoft YaHei'; color: white;\">\r\n");
      out.write("\t\t\t\t\t\t\t<img id=\"img_C893464AE12A\" src=\"./image/在线.png\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"width: 15px; height: 13px;\"><span\r\n");
      out.write("\t\t\t\t\t\t\t\tid=\"s_C893464AE12A\" style=\"color: white;\">&nbsp;&nbsp;在线</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-3\" style=\"margin-left: -10%;\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"row\" style=\"text-align: center; margin-top: 50%;\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"./image/pm25.png\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"width: 70%; padding-left: 10px;\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"ListPM25_C893464AE12A\" class=\"row\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"text-align: center; border-radius: 100px; margin-top: 5%; margin-left: 20%; margin-right: 20%; font-family: 'Microsoft YaHei'; color: white;\">34</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-1\" style=\"padding: 0px; margin-left: 2%;\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"./image/下拉.png\" style=\"width: 100%; margin-top: 80%\"\r\n");
      out.write("\t\t\t\t\t\t\tonclick=\"showPage();\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}