<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 引入struts的标签库-->
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/indexstyle.css">

  </head>
  
  <body>
  <table width="900" height="400" border="0" align="center">
      <tr>
          <td width="100%" height="120">
              <table>
                  <tr>
                      <td>
                          <img src="img/index/logo.jpg" width="100%" height="120">
                      </td>

                  </tr>
              </table>
          </td>
      </tr>

      <tr>
          <td height="10" class="firsttoolbar">
          </td>
      </tr>

      <tr>
          <td>
              <table>
                  <tr>
                      <td width="47%" class="leftline">
                          <table align="center" >
                              <tr>
                                  <td colspan="2">
                                      <img name="" src="img/index/in_user.png" alt="">
                                  </td>
                              </tr>
                          </table>
                          <s:form action = "login" namespace="/">
                              <s:textfield name="username" key="用户名"></s:textfield>
                              <s:textfield name="password" key="密  码"></s:textfield>
                              <s:submit value="登录"></s:submit>
                          </s:form>
                      </td>

                      <td width="53%" class="rightline" align="center">
                          <img src="img/index/in_banner.jpg">
                      </td>
                  </tr>
              </table>
          </td>
      </tr>

      <tr>
          <td align="right" class="secondtoolbar" height="20">
          </td>
      </tr>

      <tr>
          <td align="right" height="20" class="fontbottom">
              北京中大科慧科技发展有限公司
          </td>
      </tr>

  </table>

  <div id="loading" style="position:absolute;left:400px;top:400px">
      <img src="img/index/loading.gif">
  </div>

  <!-- Javascript Libraries -->
  <!-- jQuery -->
  <script src="js/jquery-3.3.1.js"></script>

  <!-- loading button hidden/show-->
  <script type="text/javascript">
     $("#loading").hide();
     // $("#loading").show();

      $("#sublogin").click(function(){
          $("#loading").show();
      })
  </script>

  </body>
</html>
