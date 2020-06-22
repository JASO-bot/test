<%@page import="com.demo.util.PageSupport"%>
<%@page import="com.demo.service.impl.Designer.DesignerServiceImpl"%>
<%@page import="com.demo.service.Designer.DesignerService"%>
<%@page import="com.demo.entity.Designer.DesignerPojo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'designerShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
            	<div class="news_list"> <%               	    
                  
                  	String currentPage = request.getParameter("pageIndex");
                		if("".equals(currentPage)||currentPage==null){
						currentPage="1";                	
                	}
                	
                	DesignerService designerService = new DesignerServiceImpl();
                	
                	int pageNo = Integer.parseInt(currentPage);
                	int pageSize = 9;
                	int totalCount = designerService.getDesignerTotalCount();
                	PageSupport pageSupport = new PageSupport();
                	pageSupport.setPageNo(pageNo);
                	pageSupport.setPageSize(pageSize);
                	pageSupport.setTotalCount(totalCount);
                	int totalCountPage = pageSupport.getTotalCountPage();
                	
                	
                	
                	List<DesignerPojo> designerPojos = designerService.getDesignerListByPage(pageNo, pageSize);
                	
                 %>
                	<ul>
                	
                	   <% 
          for(DesignerPojo list:designerPojos){              		               	
                 %>
		       	 <li>
		       	 <a href="<%=request.getContextPath() %>/designerpage/designerdetail.jsp?did=<%=list.getDid() %>">
		       	 设计师id：<%=list.getDid() %> |
		       	  设计师名：<%=list.getDname() %></a> 
		       	   <%
                            	if(list.getWorking()==0){
                            	 %>
                            	  <span>预约状态：未预约</span>
                            	 <%
                            	}else{ %>
                            	<span>预约状态：已预约</span>                           	
                            	<%}
                             %>
                             <a href="designerbackpage/designerModify.jsp?did=<%=list.getDid() %>">&nbsp;&nbsp;&nbsp;修改</a>  
                              <a href="<%=request.getContextPath() %>/util/Designer?opr=del&did=<%=list.getDid() %>">&nbsp;&nbsp;&nbsp;删除</a>
		       	  </li>
		       	  <%} %>
		       	  
            </ul>
            <a href="designerbackpage/designerAdd.jsp">增加</a>
    <div class="cl" style="line-height:25px;"></div>
    
                </div>
            </div>
        </div>
        <div class="sub_main_bottom"></div>
        <div class="page">	<table cellpadding="0" cellspacing="0" border="0" align="center" class="margintop15">
	<tr>
		<td align="center">
		<div id="list_page"><ul>
					<%
					if(pageNo>1){
						 %>
						 <li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=1">首页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=<%=pageNo-9%>">上一页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=1" style='color:#fff;background-color:#0056ad'>1</a></li>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=9" >2</a></li>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=18" >3</a></li>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=27" >4</a></li>
						<%} if(pageNo<totalCountPage){%>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=1">首页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=<%=pageNo+9%>">下一页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerbackpage/designerShow.jsp?opr=listpage&pageIndex=27">尾页</a></li>
            <li style="background:none;border:none;padding-top:3px;">-- <%=totalCount %>记录</li>
            <%} %>
		</ul>
		</div></td>
	</tr>
	</table>
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
  </body>
</html>
