<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>about</title>
<link rel="stylesheet" type="text/css" href="/css/css.css"/>
<script type="text/ecmascript" src="js/js.js"></script>
<link href="css/muyu.css" rel="stylesheet" type="text/css" />
<script type="text/ecmascript" src="js/js.js"></script>
<script type="text/ecmascript" src="js/jquery.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

	<div class="mainbox">
		<jsp:include   page="head.jsp" flush="true"/>
		
		<div class="sub_main_contbox">
    	<div class="sub_main_nav"><a href="#">首页</a>&nbsp;&gt;&nbsp;<a href="#">关于我们</a></div>
    	<div class="sub_main_top"></div>
		<div class="sub_main_main">
        	<div class="sub_leftbox">
            	<div class="sub_menu_img"><img src="images007/about_menu_img.jpg" /></div>
            	<div class="sub_menu">
                	<ul>
                    	<li class="this"><a href="javascript:void(0)" οnclick="doAbout(0)">品牌故事</a></li>
                        <li ><a  href="javascript:void(0)" οnclick="doAbout(1)">我们的优势</a></li>
                        <li ><a  href="javascript:void(0)" οnclick="doAbout(2)">发展历程</a></li>
                        <li ><a  href="javascript:void(0)" οnclick="doAbout(3)">企业文化</a></li>
                        <li ><a  href="javascript:void(0)" οnclick="doAbout(4)">远景规划</a></li>
                        <li ><a  href="javascript:void(0)" οnclick="doAbout(5)">联系我们</a></li>
                    </ul>
                </div>
            </div>
            <jsp:include   page="aboutBrandStory.jsp" flush="true"/>
        </div>
        <div class="sub_main_bottom"></div>
    </div>
		
	</div>
	
	<jsp:include   page="footer.jsp" flush="true"/>
</body>
</html>