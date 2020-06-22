<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'NewsList_top.jsp' starting page</title>
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
    <div class="mainbox">
		<div class="topbox">
      <div class="logo"><a href="/"><img src="images007/logo.jpg" /></a></div>
      <div class="nav">
        <ul>
         <li><a href="<%=basePath %>case/firstpage.jsp">首页</a></li>
	          <li><a href="<%=basePath %>userpage/aboutIndex.jsp">关于我们</a></li>
	          <li class="this" ><a href="<%=basePath %>actionpage/NewsList.jsp">精彩活动</a></li>
	          <li ><a href="<%=basePath %>designerpage/designerlist.jsp">点选设计师</a></li>
	          <li ><a>团装小区</a></li>
			  <!--<li ><a href="/tzxq/index.php?fid=22">团装小区</a></li>-->
	          <li ><a href="<%=basePath %>case/caselist.jsp">精品案例</a></li>
	          <li ><a href="/jygc/index.php?act=jjztgy">家居主题公园</a></li>
	          <li ><a href="<%=path %>/userpage/login.jsp">登陆</a></li>
        </ul>
      </div>
    </div>	</div>
    <div class="sub_main_contbox">
    	<div class="sub_main_nav"><a href="/">首页</a>&nbsp;&gt;&nbsp;<a href="<%request.getContextPath(); %>/ZhuangXiu/actionpage/NewsList.jsp">精彩活动</a></div>
    	<div class="sub_main_top"></div>
    </div>
  </body>
</html>
