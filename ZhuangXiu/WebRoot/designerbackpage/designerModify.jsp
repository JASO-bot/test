<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DesignerChange.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/muyu.css" rel="stylesheet" type="text/css" />
	<link href="css/admin.css" rel="stylesheet" type="text/css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function check(){
		var tname = document.getElementById("tname1");

		if(tname.value == ""){
			alert("请输入设计师id！！");
			tname.focus();
			return false;
		}		
		return true;
	}
</script>
  </head>
  
  <body>
   <div class="sub_mainbox">
	<div class="mainbox">
		<div class="topbox">
      <div class="logo"><a href="/"><img src="images007/logo.jpg" /></a></div>
      <div class="nav">
        <ul>
          <li ><a href="/about/index.php?act=ppgs">关于我们</a></li>
          <li class="this"><a href="/news/index.php?act=zthd">精彩活动</a></li>
          <li ><a href="/sjs/index.php">点选设计师</a></li>
          <li ><a>团装小区</a></li>
		  <!--<li ><a href="/tzxq/index.php?fid=22">团装小区</a></li>-->
          <li ><a href="/jygc/index.php?act=jygc">精益工程</a></li>
          <li ><a href="/cases/index.php?fid=22">精品案例</a></li>
          <li ><a href="/jygc/index.php?act=jjztgy">家居主题公园</a></li>
          <li ><a href="/khfw/index.php?act=contact">客户服务</a></li>
        </ul>
      </div>
    </div>	</div>
    <div class="sub_main_contbox">
    	<div class="sub_main_nav"><a href="/">首页</a>&nbsp;&gt;&nbsp;<a href="#">精彩活动</a></div>
    	<div class="sub_main_top"></div>
<div class="sub_main_main">
        	<div class="sub_leftbox">
            	<div class="sub_menu_img"><img src="images007/jchd_menu_img.jpg" /></div>
            	<div class="sub_menu">
                	<ul>
                   	  <li class="this"><a href="">设计师管理</a></li>
                    </ul>
                </div>
            </div>
            <div class="sub_rightbox">
  <div id="main">
  	<div id="opt_area">
    <form action="util/Designer?opr=update" method="post" onsubmit="return check()">
    
      <p>
        <label> 修改设计师名字 </label>
        <input name="dname" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 头像路径</label>
        <input name="dimg" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 职位</label>
        <input name="dlevel" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 从业时间</label>
        <input name="dtime" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 作品数</label>
        <input name="dworks" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师设计风格 </label>
        <input name="dstyle" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 设计案例</label>
        <input name="dworkname" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 毕业院校</label>
        <input name="school" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 设计原则</label>
        <input name="principle" type="text" class="opt_input" id="tname"/>
      </p>
      <p>
        <label> 修改设计师 预约状态（0/1）</label>
        <input name="working" type="text" class="opt_input" id="tname"/>
      </p>
      <input name="action" type="hidden" value="addtopic"/>
      <input type="submit" value="提交" class="opt_sub" />
    </form>
    </div>
                 
            
	 </div>
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
    </div>   
    </div>   
  </body>
</html>
