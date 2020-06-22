<%@page import="com.demo.service.impl.action.ActionDaoServiceImpl"%>
<%@page import="com.demo.service.action.ActionDaoService"%>
<%@page import="com.demo.entity.action.Action"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- <jsp:useBean id="actionDaoServiceImpl" class="com.demo.service.impl.ActionDaoServiceImpl"></jsp:useBean> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'NewsList.jsp' starting page</title>
    <link rel="stylesheet" type="text/css" href="css/css.css"/>
	<link href="css/muyu.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/js.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <!-- 页面顶部 -->
    <jsp:include page="NewsList_top.jsp"></jsp:include>
    <!-- 页面主体 -->
    <div class="sub_main_contbox">
	<div class="sub_main_main">
        	<div class="sub_leftbox">
            	<div class="sub_menu_img"><img src="images007/jchd_menu_img.jpg" /></div>
            	<div class="sub_menu">
                	<ul>
                   	  <li class="this"><a href="<%request.getContextPath(); %>/ZhuangXiu/actionpage/NewsList.jsp">主题活动</a></li>
                        <li ><a href="">公司动态</a></li>
                    </ul>
                </div>
            </div>
            <%
            //获取需要查询的新闻编号
            String aid=request.getParameter("aid");
            ActionDaoService actionDaoService=new ActionDaoServiceImpl();
            Action action=actionDaoService.findNewsByNid(Integer.parseInt(aid));
             %>
            <div class="sub_rightbox">
            	<div class="news_title"><%=action.getAtopic() %></div>
                <div class="news_date">时间：<%=action.getAtime() %>      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;来源：<%=action.getAuthor() %></div>
                <div class="sub_right_cont">
                  &nbsp;
			<p class="MsoNormal" style="text-indent:21pt;">
				<%=action.getAwords() %>
			</p>

</div>
            </div>
        </div>
	 </div>
    <!-- 页面底部 -->
    <jsp:include page="NewsList_boottom.jsp"></jsp:include>
  </body>
</html>
