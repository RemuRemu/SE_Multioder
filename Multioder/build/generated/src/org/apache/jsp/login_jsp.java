package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Multioder - Log in</title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\r\n");
      out.write("        <!--<link rel=\"stylesheet\" type=\"text/css\" href=\"jb.css\">-->\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Kanit\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"ani.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body style=\"font-family: 'Kanit', sans-serif; background-image: url('pic/food.jpg'); background-size: cover; background-attachment: fixed;\">\r\n");
      out.write("        <!-- <img src=\"food1.jpg\" style=\"position: fixed; top: 0px; left: 0px; width: 105%;\"> -->\r\n");
      out.write("        <div class=\"back\"></div>\r\n");
      out.write("        <!-- <img src=\"back.png\" style=\"width: 35%; height: 97%; margin-top: -1em; margin-left: 10%; padding-top: 2em; padding-bottom: 3em; position: fixed;\"> -->\r\n");
      out.write("        <div class=\"area\" style=\"background-image: url('pic/back.png');\">\r\n");
      out.write("            <div class=\"logo_area\">\r\n");
      out.write("                <img id=\"logo\" src=\"pic/logo.png\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form_login\">\r\n");
      out.write("                <form method=\"post\" action=\"loginServlet\">\r\n");
      out.write("                    <font size=\"6\" color=\"white\"><b>เข้าสู่ระบบ</b></font><br><br>\r\n");
      out.write("                    <input type=\"text\" name=\"user\" placeholder=\"Username\" size=\"40px\"> <br><br>\r\n");
      out.write("                    <input type=\"password\" name=\"pass\" placeholder=\"Password\" size=\"40px\"> <br><br>\r\n");
      out.write("                    <input type=\"submit\" name=\"login\" value=\"Login\"><br><br>\r\n");
      out.write("                </form>\r\n");
      out.write("                <font size=\"4\" color=\"white\">หากยังไม่เป็นสมาชิก <a href=\"register.jsp\">คลิกที่นี่</a></font>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"pic\" style=\"width: 500px; position: fixed; top: 28%; left: 50%; overflow: hidden;\">\r\n");
      out.write("            <img src=\"pic/slogan1.png\" class=\"slide anime\" style=\"width: 100%;\">\r\n");
      out.write("            <img src=\"pic/slogan2.png\" class=\"slide anime\" style=\"width: 100%;\">\r\n");
      out.write("            <img src=\"pic/slogan3.png\" class=\"slide anime\" style=\"width: 100%;\">\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("            \r\n");
      out.write("        <script>\r\n");
      out.write("        var myIndex = 0;\r\n");
      out.write("        carousel();\r\n");
      out.write("\r\n");
      out.write("        function carousel() {\r\n");
      out.write("            var i;\r\n");
      out.write("            var x = document.getElementsByClassName(\"slide\");\r\n");
      out.write("            for (i = 0; i < x.length; i++) {\r\n");
      out.write("               x[i].style.display = \"none\";  \r\n");
      out.write("            }\r\n");
      out.write("            myIndex++;\r\n");
      out.write("            if (myIndex > x.length) {myIndex = 1}\r\n");
      out.write("            x[myIndex-1].style.display = \"block\";\r\n");
      out.write("            setTimeout(carousel, 4000);\r\n");
      out.write("        }\r\n");
      out.write("        </script>\r\n");
      out.write("        \r\n");
      out.write("        ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${loginflag == false}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("            <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\r\n");
        out.write("            <script>swal(\"ชื่อผู้ใช้หรือพาสเวิร์ดไม่ถูกต้อง\");</script>  \r\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${flag == 3}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("            <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\r\n");
        out.write("            <script>swal({\r\n");
        out.write("                title: \"ลงทะเบียนสำเร็จ!\",\r\n");
        out.write("                icon: \"success\",\r\n");
        out.write("                button: \"OK!\",});\r\n");
        out.write("            </script> \r\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }
}
