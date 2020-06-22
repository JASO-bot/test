<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
    <link rel="stylesheet" type="text/css" href="css/css.css"/>
	<link href="css/muyu.css" rel="stylesheet" type="text/css" />
	<script type="text/ecmascript" src="js/js.js"></script>
</head>
<body>
	<div class="mainbox">
		<jsp:include   page="head.jsp" flush="true"/>
	
		<div class="banner">
		    <script type="text/javascript" src="js/jquery.js"></script> 
		    <script type="text/javascript" src="js/lrtk.js"></script>
	      	<div class="focus">
	        <ul class="rslides f426x240">
	          <li><a href="http://www.hfchuanhao.com/news/view.php?id=40" target="_blank"><img src="images007/VMDXRZIkzC9Jzhl8533.jpg" width="960" height="420" alt="4月" /></a></li>
	        </ul>
	      </div>
	    </div>
	    
        <div class="main_contbox">
		      <div class="main_cont_list">
		        <ul>
		          <li>
		          	<a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp">
		            <div class="main_cont_list_img"><img src="images007/sjs_img.jpg" width="78" height="120" /></div>
		            <div class="main_cont_list_title">点选设计师</div>
		            <div class="main_cont_list_cont">匹配出属于您的设计师</div>
		            <div class="main_cont_list_more">查看更多</div>
		            </a>
		          </li>
		          <li>
		          	<a href="/tzxq/index.php?fid=16">
		            <div class="main_cont_list_img01"><img src="images007/maincont_img02.jpg" width="105" height="108" /></div>
		            <div class="main_cont_list_title">团装小区</div>
		            <div class="main_cont_list_cont">从此不必再为装修而烦恼</div>
		            <div class="main_cont_list_more">查看更多</div>
		            </a>
		          </li>
		          <li>
		          <a href="cases/index.php?fid=22">
		            <div class="main_cont_list_img02"><img src="images007/maincont_img03.jpg" width="80" height="70" /></div>
		            <div class="main_cont_list_title">精品案例</div>
		            <div class="main_cont_list_cont">这里有你需要的一切信息</div>
		            <div class="main_cont_list_more">查看更多</div>
		            </a>
		          </li>
		          <li>
		          	<a href="/jygc/index.php?act=jjztgy">
		            <div class="main_cont_list_img03"><img src="images007/maincont_img04.jpg" width="82" height="99" /></div>
		            <div class="main_cont_list_title">家居主题公园</div>
		            <div class="main_cont_list_cont">开始一段精彩的家具之行</div>
		            <div class="main_cont_list_more">查看更多</div>
		            </a>
		          </li>
		        </ul>
		      </div>
	    </div>
	    
	    
	</div>
	
	<jsp:include   page="footer.jsp" flush="true"/>
</body>
</html>
