package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Multioder - Home</title>\r\n");
      out.write("        <!--<link rel=\"stylesheet\" type=\"text/css\" href=\"ani.css\">-->\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Kanit\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style_menu.css\">\r\n");
      out.write("        <!-- <style>.slide {display: block;} </style> -->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("       \r\n");
      out.write("        <div class=\"menu_area\">\r\n");
      out.write("             <a href=\"cart.jsp\"><button type=\"submit\" >cart</button></a>\r\n");
      out.write("            <div class=\"menu\">\r\n");
      out.write("                <a href=\"menu.jsp\"><img id=\"home\" src=\"pic/logo.png\"></a>\r\n");
      out.write("                <img id=\"choose\" src=\"pic/menu.png\">\r\n");
      out.write("                <img id=\"shop\" src=\"pic/sb.png\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"con_area\">\r\n");
      out.write("            <div class=\"rec\">\r\n");
      out.write("                <img src=\"pic/slogan1.png\" class=\"slide anime\" style=\"width: 100%;\">\r\n");
      out.write("                <img src=\"pic/slogan2.png\" class=\"slide anime\" style=\"width: 100%;\">\r\n");
      out.write("                <img src=\"pic/slogan3.png\" class=\"slide anime\" style=\"width: 100%;\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"title\">\r\n");
      out.write("                <font class=\"head_name\" size=\"6\" color=\"black\">รายการอาหาร</font>\r\n");
      out.write("                <input type=\"text\" id=\"myInput\" onkeyup=\"myFunction()\" placeholder=\"ค้นหาชื่ออาหาร..\" title=\"Type in a name\" size=\"40px\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <ul id=\"myUL\">\r\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("            \r\n");
      out.write("\r\n");
      out.write("            <script>\r\n");
      out.write("            function myFunction() {\r\n");
      out.write("                var input, filter, ul, li, a, i;\r\n");
      out.write("                input = document.getElementById(\"myInput\");\r\n");
      out.write("                filter = input.value.toUpperCase();\r\n");
      out.write("                ul = document.getElementById(\"myUL\");\r\n");
      out.write("                li = ul.getElementsByTagName(\"li\");\r\n");
      out.write("                for (i = 0; i < li.length; i++) {\r\n");
      out.write("                    a = li[i].getElementsByTagName(\"a\")[0];\r\n");
      out.write("                    if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {\r\n");
      out.write("                        li[i].style.display = \"\";\r\n");
      out.write("                    } else {\r\n");
      out.write("                        li[i].style.display = \"none\";\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("        \r\n");
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
      out.write("            setTimeout(carousel, 3000);\r\n");
      out.write("        }\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("menu");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu_list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("  \r\n");
          out.write("                <form action=\"/Multioder/shopServlet\">\r\n");
          out.write("\r\n");
          out.write("                    <li><a>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("<input type=\"submit\" value=\"Go to shop\" /></a></li>\r\n");
          out.write("                    <input type=\"hidden\" name=\"name\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" />\r\n");
          out.write("\r\n");
          out.write("                </form>\r\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
