<%@page import="com.demo.entity.Case.CasePojo"%>
<%@page import="com.demo.service.impl.Case.CaseServiceImpl"%>
<%@page import="com.demo.service.Case.CaseService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">

<title>合肥川豪装饰之-简约生活 - 川豪装饰</title>
<meta name="keywords" content="合肥川豪装饰之-简约生活" />
<meta name="description" content="合肥川豪装饰之-简约生活" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script src="js/js.js" type="text/javascript"></script><link href="css/muyu.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="sub_mainbox">
	<div class="mainbox">
		<div class="topbox">
      <div class="logo"><a href="/"><img src="images007/logo.jpg" /></a></div>
      <div class="nav">
        <ul>
          <li><a href="<%=basePath %>case/firstpage.jsp">首页</a></li>
	          <li><a href="<%=basePath %>userpage/aboutIndex.jsp">关于我们</a></li>
	          <li ><a href="<%=basePath %>actionpage/NewsList.jsp">精彩活动</a></li>
	          <li "><a href="<%=basePath %>designerpage/designerlist.jsp">点选设计师</a></li>
	          <li ><a>团装小区</a></li>
			  <!--<li ><a href="/tzxq/index.php?fid=22">团装小区</a></li>-->
	          <li class="this"><a href="<%=basePath %>case/caselist.jsp">精品案例</a></li>
	          <li ><a href="/jygc/index.php?act=jjztgy">家居主题公园</a></li>
	          <li ><a href="<%=path %>/userpage/login.jsp">登陆</a></li>
        </ul>
      </div>
    </div>	</div>
    <div class="sub_main_contbox">
    	<div class="sub_main_nav"><a href="/">首页</a>&nbsp;&gt;&nbsp;<a href="#">精品案例</a>
    	</div><div class="sub_main_top"></div>
<div class="sub_main_main">
        	<div class="sub_leftbox">
            	<div class="sub_menu_img"><img src="images007/case_menu_img.jpg" /></div>
            	<div class="sub_menu">
                	<ul>
                    	        <li ><a href="/cases/index.php?fid=22">现代简约</a></li>
	        <li ><a href="/cases/index.php?fid=21">欧式风格</a></li>
	        <li ><a href="/cases/index.php?fid=20">中式风格</a></li>
	        <li ><a href="/cases/index.php?fid=19">乡村田园</a></li>
	 
                    </ul>
                </div>
            </div>
            <div class="sub_rightbox">
            <%
              String id=request.getParameter("id");
              CaseService caseService=new CaseServiceImpl();
              
              List<CasePojo> casePojos=caseService.getCaseByid(Integer.parseInt(id));
            for(CasePojo list:casePojos){
            
             %>
            	<div class="case_detail_title">合肥川豪装饰之-简约生活</div>
                <div class="case_detail_date">时间：<%=list.getTime() %> 分享到： <!-- Baidu Button BEGIN -->
<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare" style="float:right; margin-right:120px; margin-left:-160px;">
<a class="bds_qzone"></a>
<a class="bds_tsina"></a>
<a class="bds_tqq"></a>
<a class="bds_renren"></a>
<a class="bds_t163"></a>
<span class="bds_more">更多</span>
<a class="shareCount"></a>
</div>
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=0" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/staticjs/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
<!-- Baidu Button END --></div>
              <div class="sub_right_cont">
                <p>
	<img src="<%=list.getImg() %>" width="100%" alt="" />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<img src="<%=list.getImg() %>"  width="100%" alt="" />
</p></div><%} %>
      </div>
        </div>
        <div class="sub_main_bottom"></div>
        <div class="page"></div>
    </div>
</div>
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
           <li ><a href="<%=basePath %>userpage/index.jsp">首页</a></li>
	          <li><a href="<%=basePath %>userpage/aboutIndex.jsp">关于我们</a></li>
	          <li ><a href="<%=basePath %>actionpage/NewsList.jsp">精彩活动</a></li>
	          <li ><a href="<%=basePath %>designerpage/designerlist.jsp">点选设计师</a></li>
	          <li ><a>团装小区</a></li>
			  <!--<li ><a href="/tzxq/index.php?fid=22">团装小区</a></li>-->
	          <li class="this"><a href="/cases/index.php?fid=22">精品案例</a></li>
	          <li ><a href="/jygc/index.php?act=jjztgy">家居主题公园</a></li>
	          <li ><a href="<%=path %>/userpage/login.jsp">登陆</a></li>
               
                </ul>
            </div>
            <div class="bottom_contbox_cont">版权所有 川豪装饰有限公司 2013 www.hfchuan.com&nbsp;&nbsp; </div>
        </div>
    </div>
</div>



</div>


</body>
</html>