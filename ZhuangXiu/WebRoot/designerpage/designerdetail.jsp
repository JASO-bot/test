
<%@page import="com.demo.entity.Designer.DesignerPojo"%>
<%@page import="com.demo.service.impl.Designer.DesignerServiceImpl"%>
<%@page import="com.demo.service.Designer.DesignerService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'designerdetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/css.css" rel="stylesheet" type="text/css" />
	<link href="css/muyu.css" rel="stylesheet" type="text/css" />
	<script src="js/js.js" type="text/javascript"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body>
<div class="sub_mainbox">
	<div class="mainbox">
		<div class="topbox">
      <div class="logo"><a href="/"><img src="images007/logo.jpg" /></a></div>
      <div class="nav">
        <ul>
          <li><a href="<%=basePath %>userpage/index.jsp">首页</a></li>
	          <li><a href="<%=basePath %>userpage/aboutIndex.jsp">关于我们</a></li>
	          <li ><a href="<%=basePath %>actionpage/NewsList.jsp">精彩活动</a></li>
	          <li class="this" ><a href="<%=basePath %>designerpage/designerlist.jsp">点选设计师</a></li>
	          <li ><a>团装小区</a></li>
			  <!--<li ><a href="/tzxq/index.php?fid=22">团装小区</a></li>-->
	          <li><a href="<%=basePath %>case/caselist.jsp">精品案例</a></li>
	          <li ><a href="/jygc/index.php?act=jjztgy">家居主题公园</a></li>
	          <li ><a href="<%=path %>/userpage/login.jsp">登陆</a></li>
        </ul>
      </div>
    </div>	</div>
    <div class="sub_main_contbox">
    	<div class="sub_main_nav"><a href="/">首页</a>&nbsp;&gt;&nbsp;<a href="/sjs/index.php?fid=16">点选设计师</a></div>
    	<div class="sub_main_top"></div>
<div class="sub_main_main">
        	<div class="sub_leftbox">
            	<div class="sub_menu_img"><img src="images007/design_menu_img.jpg" /></div>
                <div class="design_left_img"><img src="images007/CtgPkugRiPk6zhl4046.jpg" width="203" height="183" /></div>
            </div>
            <div class="sub_rightbox">
  <div class="design_detail">
    	 <%               	  
                    String did = request.getParameter("did");		
                	DesignerService designerService = new DesignerServiceImpl();
                	
                	List<DesignerPojo> designerPojos = designerService.getDesignerBydid(Integer.parseInt(did));
                	for(DesignerPojo list:designerPojos){              		               	
                 %>
                	<div class="design_detail_imgbox">
                    	<div class="design_detail_img"><img src="<%=list.getDimg() %>" width="186" height="212" /></div>
                        <div class="design_detail_an">
                        	<ul>
                            	<li><a href="/about/gbook.php?yysj=朱春云">预约设计师</a></li>
                                <li><a href="#">在线咨询</a></li>
                            </ul>
                        </div>
                    </div>
          <div class="design_detail_cont">
                    	<div class="design_detail_tj">
                  
                        	<div class="design_detail_tj_text"><%=list.getDname() %></div>
                            <div class="design_detail_tj_an" style="font-size:14px; line-height:27px; text-align:center; background:#378a42; color:#fff;">推荐</div>              </div>
                  <div class="design_detail_cont_list">
                        	<h3>级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</h3><%=list.getDlevel() %> <br />
                   			<h3>从业经历：</h3><%=list.getDworks() %>年
                            <br />
                            <h3>擅长风格：</h3><%=list.getDstyle() %>  <br />
                            <h3>毕业院校：</h3><%=list.getSchool() %>  <br />
                    		<h3>案例作品：</h3><%=list.getDworkname() %><br />
                            <h3>设计原则：</h3><%=list.getPrinciple() %><br />
                            <%
                            	if(list.getWorking()==0){
                            	 %>
                            	  <h3>预约状态：未预约</h3>
                            	 <%
                            	}else{ %>
                            	<h3>预约状态：已预约</h3>
                            	
                            	<%}
                             %>
                           <!--  <h3>预约状态：</h3><%=list.getWorking() %>   -->
                            </div>
                            
                            
  </div>
  
  				 <%} %>
                </div>
              <div class="design_detail_nav">作品案例</div>
                <div class="design_detail_imglist">
                	<ul>
                    	 
       
        <li>
                        	<div class="design_detail_imglist_img"><a href="/cases/view.php?id=88"><img src="images007/dx2i5q62MVXAzhl8472_200x150.jpg" width="159" height="118" /></a></div>
                            <div class="design_detail_imglist_title">元一滨水城现代风格装修效果图</div>
                            <div class="design_detail_imglist_date">2014-03-15</div>
                        </li>
	 
       
        <li>
                        	<div class="design_detail_imglist_img"><a href="/cases/view.php?id=42"><img src="images007/QuCJsnBb8qgRzhl581_200x150.jpg" width="159" height="118" /></a></div>
                            <div class="design_detail_imglist_title">现代简约效果图</div>
                            <div class="design_detail_imglist_date">2013-07-07</div>
                        </li>
	 
       
        <li>
                        	<div class="design_detail_imglist_img"><a href="/cases/view.php?id=41"><img src="images007/nq7zfu9ZQkJtzhl6504_200x150.jpg" width="159" height="118" /></a></div>
                            <div class="design_detail_imglist_title">欧式风格效果图</div>
                            <div class="design_detail_imglist_date">2013-07-07</div>
                        </li>
	    
                    </ul>
                </div>
            </div>
        </div>
        <div class="sub_main_bottom"></div>
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
         		<li><a href="<%=basePath %>userpage/aboutIndex.jsp">关于我们</a></li>
	          <li ><a href="/news/index.php?act=zthd">精彩活动</a></li>
	          <li ><a href="<%=basePath %>designerpage/designerlist.jsp">点选设计师</a></li>
	          <li ><a>团装小区</a></li>
			  <!--<li ><a href="/tzxq/index.php?fid=22">团装小区</a></li>-->
	          <li ><a href="/cases/index.php?fid=22">精品案例</a></li>
	          <li ><a href="/jygc/index.php?act=jjztgy">家居主题公园</a></li>
               
                </ul>
            </div>
            <div class="bottom_contbox_cont">版权所有 川豪装饰有限公司 2013 www.hfchuan.com&nbsp;&nbsp; </div>
        </div>
    </div>
</div>

</div>

</body>
</html>
