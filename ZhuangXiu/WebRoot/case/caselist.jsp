<%@page import="com.demo.util.PageSupport"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>精品案例 - 川豪装饰</title>
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
    	<div class="sub_main_nav"><a href="/">首页</a>&nbsp;&gt;&nbsp;<a href="#">精品案例</a></div>
    	<div class="sub_main_top"></div>
<div class="sub_main_main">
        	<div class="sub_leftbox">
            	<div class="sub_menu_img"><img src="images007/case_menu_img.jpg" /></div>
            	<div class="sub_menu">
                	<ul>
                    	        <li class="this"><a href="">现代简约</a></li>
	        <li ><a href="">欧式风格</a></li>
	        <li ><a href="">中式风格</a></li>
	        <li ><a href="">乡村田园</a></li>
	 
                    </ul>
                </div>
            </div>
            <div class="sub_rightbox">
            	<div class="case_list">
                	
                	<%
                	  String currentPage = request.getParameter("pageIndex");
                		if("".equals(currentPage)||currentPage==null){
						currentPage="1";                	
                	}
                	
                	CaseService caseService=new CaseServiceImpl();
                	
                	int pageNo = Integer.parseInt(currentPage);
                	int pageSize = 9;
                	int totalCount = caseService.getCaseTotalCount();
                	PageSupport pageSupport=new PageSupport();
                	pageSupport.setPageNo(pageNo);
                	pageSupport.setPageSize(pageSize);
                	pageSupport.setTotalCount(totalCount);
                	int totalCountPage = pageSupport.getTotalCountPage();
                	
                	
                	List<CasePojo> casePojo=caseService.getCaseListByPage(pageNo, pageSize);
                  
                	 %>
                	 <ul  >
                	 <%
                	 for(CasePojo list:casePojo){
                	  %>
                	  
                        <li style="float:left">
                        	<div class="case_list_img"><a href="<%=request.getContextPath() %>/case/casedetail.jsp?id=<%=list.getId() %>"><img src="<%=list.getImg() %>" width="217" height="156" /></a></div>
                            <div class="case_lsit_date"><%=list.getTime() %></div>
                        </li>
                        <%} %>
                    </ul>
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
						 <li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=1">首页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=<%=pageNo-9%>">上一页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=1" style='color:#fff;background-color:#0056ad'>1</a></li>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=9" >2</a></li>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=18" >3</a></li>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=27" >4</a></li>
						<%} if(pageNo<totalCountPage){%>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=1">首页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=<%=pageNo+9%>">下一页</a></li>
						<li><a href="<%=request.getContextPath() %>/designerpage/designerlist.jsp?opr=listpage&pageIndex=27">尾页</a></li>
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



</div>


</body>
</html>