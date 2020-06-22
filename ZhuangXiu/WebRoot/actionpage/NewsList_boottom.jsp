<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'NewsList_boottom.jsp' starting page</title>
    <link rel="stylesheet" type="text/css" href="css/css.css"/>
	<link href="css/muyu.css" rel="stylesheet" type="text/css" />
	<script type="text/ecmascript" src="js/js.js"></script>
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
    <div class="bottombox">
	<div class="bottommain_contbox">
	  <div class="bottom_contbox">
   	  <div class="bottom_contbox_fx">
            	<ul>
                	<li><img src="images007/index2_29.jpg" width="16" height="16" /><a href="#">新浪微博</a></li>
                    <li><img src="images007/index2_31.jpg" width="16" height="16" /><a href="#">腾讯微博</a></li>
                  <li><img src="images007/index2_39.jpg" width="16" height="16" /><a href="#">人人网</a></li>
                  <li><img src="images007/index2_40.jpg" width="16" height="16" /><a href="#">分享到QQ</a></li>
                </ul>
            </div>
<div class="bottom_contbox_link">
            	<ul>
                	<li><a href="/about/index.php?act=ppgs">关于川豪</a></li>
          <li><a href="/news/index.php?act=zthd">精彩活动</a></li>
          <li><a href="/sjs/index.php?fid=16">点选设计师</a></li>
          <li><a href="/tzxq/index.php?fid=16">团装小区</a></li>
          <li><a href="/jygc/index.php?act=jygc">精益工程</a></li>
          <li><a href="/cases/index.php?fid=16">精品案例</a></li>
          <li><a href="/khfw/index.php?act=contact">客户服务</a></li>
               
                </ul>
            </div>
            <div class="bottom_contbox_cont">版权所有 川豪装饰有限公司 2013 www.hfchuan.com&nbsp;&nbsp; </div>
        </div>
    </div>
</div>
  </body>
</html>
