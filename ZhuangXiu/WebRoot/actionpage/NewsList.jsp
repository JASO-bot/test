<%@page import="com.demo.util.Page"%>
<%@page import="com.demo.entity.action.Action"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:useBean id="actionDaoServiceImpl"
	class="com.demo.service.impl.action.ActionDaoServiceImpl"></jsp:useBean>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>新闻列表</title>
<link rel="stylesheet" type="text/css" href="css/css.css" />
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
				<div class="sub_menu_img">
					<img src="images007/jchd_menu_img.jpg" />
				</div>
				<div class="sub_menu">
					<ul>
						<li class="this"><a
							href="<%request.getContextPath();%>/ZhuangXiu/actionpage/NewsList.jsp">主题活动</a></li>
						<li><a href="">公司动态</a></li>
					</ul>
				</div>
			</div>
			<div class="sub_rightbox">
				<div class="news_list">
					<ul>
						<%
							//翻页
							String CurrentPage = request.getParameter("pageIndex");
							if ("".equals(CurrentPage) || CurrentPage == null) {
								CurrentPage = "1";
							}

							Page pageSupport = new Page();

							//分页查询
							//当前页面
							int pageIndex = Integer.parseInt(CurrentPage);

							//新闻总数量
							int TotalCount = actionDaoServiceImpl.findTotalCount();
							//页面容量
							int pageSize = 13;
							//获取总页数
							//先设置当前页码
							pageSupport.setCurrPageNo(pageIndex);
							//设置每页容量
							pageSupport.setPageSize(pageSize);
							//设置新闻总数，将自动设置总页数
							pageSupport.setTotalPageCount(TotalCount);

							//获取总页数
							int Sumpage = TotalCount / pageSize;
							if (TotalCount % pageSize > 0) {
								Sumpage = TotalCount / pageSize + 1;
							}

							//分页显示每页新闻
							List<Action> param = actionDaoServiceImpl.findPageNews(pageIndex,
									pageSize);
							//一定要调用方法把集合遍历 出来使用
							for (Action action : param) {
						%>
						<li><a
							href="/ZhuangXiu/actionpage/NewsInfo.jsp?aid=<%=action.getAid()%>"><%=action.getAtopic()%></a><span><%=action.getAtime()%></span></li>
						<%
							}
						%>
					</ul>
					<div class="cl" style="line-height:25px;"></div>
				</div>
			</div>
		</div>
		<div class="sub_main_bottom"></div>
		<div class="page">
			<table cellpadding="0" cellspacing="0" border="0" align="center"
				class="margintop15">
				<tr>
					<td align="center">
						<div id="list_page">
							<ul>
								<%
									if (pageIndex > 1) {
								%>
								<li><a
									href="<%=request.getContextPath()%>/actionpage/NewsList.jsp?pageIndex=<%=pageIndex - 1%>">上一页</a></li>
								<%
									}
								%>
								<%
									if (pageIndex < Sumpage) {
								%>
								<li><a
									href="<%=request.getContextPath()%>/actionpage/NewsList.jsp?pageIndex=<%=pageIndex + 1%>">下一页</a></li>
								<li><a
									href="<%=request.getContextPath()%>/actionpage/NewsList.jsp?pageIndex=<%=Sumpage%>">尾页</a></li>
								<%
									}
								%>
								<li style="background:none;border:none;padding-top:3px;"><%=pageIndex%>/<%=Sumpage%>页--
									<%=actionDaoServiceImpl.findTotalCount()%> 记录</li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- 页面底部 -->
	<jsp:include page="NewsList_boottom.jsp"></jsp:include>
</body>
</html>
