package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body style=\"background-image: url('pic/food.jpg'); background-size: cover;\">\r\n");
      out.write("        <div class=\"back\"></div>\r\n");
      out.write("        <div class=\"area1\" style=\"background-image: url('pic/back.png');\">\r\n");
      out.write("            <div class=\"form_signup\">\r\n");
      out.write("                <form action=\"registerServlet\" method=\"POST\">\r\n");
      out.write("                    <font size=\"7\" color=\"white\" style=\"text-shadow: 2px 2px #333\"><b>สมัครสมาชิก</b></font> <br><br>\r\n");
      out.write("                    <font size=\"3\" color=\"white\">\r\n");
      out.write("                    ชื่อผู้ใช้ (username) <br>\r\n");
      out.write("                    <input type=\"text\" name=\"user\" value=\"\" size=\"40px\"/> <br>\r\n");
      out.write("                    รหัสผ่าน (password) <br>\r\n");
      out.write("                    <input type=\"password\" name=\"pass\" value=\"\" size=\"40px\"/> <br>\r\n");
      out.write("                    ชื่อจริง (first name) <br>\r\n");
      out.write("                    <input type=\"text\" name=\"first\" value=\"\" size=\"40px\"/> <br>\r\n");
      out.write("                    นามสกุล (last name) <br>\r\n");
      out.write("                    <input type=\"text\" name=\"last\" value=\"\" size=\"40px\"/> <br>\r\n");
      out.write("                    อีเมล์ (email) <br>\r\n");
      out.write("                    <input type=\"text\" name=\"mail\" value=\"\" size=\"40px\"/> <br>\r\n");
      out.write("                    โทรศัพท์ (phone) <br>\r\n");
      out.write("                    <input type=\"text\" name=\"phone\" value=\"\" maxlength = \"10\" size=\"40px\"/> <br>\r\n");
      out.write("                    ที่อยู่ (address) <br>\r\n");
      out.write("                    <textarea name=\"add\" rows=\"4\" cols=\"40\"></textarea><br>\r\n");
      out.write("                    </font>\r\n");
      out.write("\r\n");
      out.write("                    <input type=\"submit\" name=\"register\" value=\"Register\" />\r\n");
      out.write("                    <!--<input type=\"submit\" name=\"back\" value=\"Back\" />-->\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <form action=\"registerServlet\" method=\"POST\">\r\n");
      out.write("            register <br>\r\n");
      out.write("            username <input type=\"text\" name=\"user\" value=\"\" /> <br>\r\n");
      out.write("            password <input type=\"password\" name=\"pass\" value=\"\" /> <br>\r\n");
      out.write("            first name <input type=\"text\" name=\"first\" value=\"\" /> <br>\r\n");
      out.write("            last name <input type=\"text\" name=\"last\" value=\"\" /> <br>\r\n");
      out.write("            email <input type=\"text\" name=\"mail\" value=\"\" /> <br>\r\n");
      out.write("            phone <input type=\"text\" name=\"phone\" value=\"\" maxlength = \"10\"/> <br>\r\n");
      out.write("            <textarea name=\"add\" rows=\"4\" cols=\"20\"></textarea>\r\n");
      out.write("            <input type=\"submit\" value=\"regis\" />\r\n");
      out.write("        </form>\r\n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${flag == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("            <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\r\n");
        out.write("            <script>swal({\"Username or Email has already used\"});</script>  \r\n");
        out.write("\r\n");
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
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${flag == 2}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("            <script src=\"https://unpkg.com/sweetalert2@7.8.2/dist/sweetalert2.all.js\"></script>\r\n");
        out.write("\r\n");
        out.write("            <script>swal({\r\n");
        out.write("                    title: 'Are you sure?',\r\n");
        out.write("                    text: 'Some text.',\r\n");
        out.write("                    imageUrl: 'https://i.imgur.com/c6UHmfR.jpg',\r\n");
        out.write("                    type: 'info',\r\n");
        out.write("                    showCancelButton: true,\r\n");
        out.write("                    confirmButtonColor: '#DD6B55',\r\n");
        out.write("                    confirmButtonText: 'Yes!',\r\n");
        out.write("                    cancelButtonText: 'No.'\r\n");
        out.write("                }).then(() => {\r\n");
        out.write("                    if (result.value) {\r\n");
        out.write("                        // handle Confirm button click\r\n");
        out.write("                    } else {\r\n");
        out.write("                        // result.dismiss can be 'cancel', 'overlay', 'esc' or 'timer'\r\n");
        out.write("                    }\r\n");
        out.write("                });</script>  \r\n");
        out.write("            ");
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
