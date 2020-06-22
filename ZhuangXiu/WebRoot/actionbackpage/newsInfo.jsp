<%@page import="com.demo.entity.action.Action"%>
<%@page import="com.demo.util.Page"%>
<%@page import="com.demo.service.impl.action.ActionDaoServiceImpl"%>
<%@page import="com.demo.service.action.ActionDaoService"%>
<%@ page language="java" import="java.util.*,com.demo.entity.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="actionDaoServiceImpl"
	class="com.demo.service.impl.action.ActionDaoServiceImpl"></jsp:useBean>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script src="js/js.js" type="text/javascript"></script>
<link href="css/muyu.css" rel="stylesheet" type="text/css" />
<title>精彩活动信息</title>
<style>
* {
	padding: 0;
	margin: 0;
}

body {
	height: 100%;
	font-size: 14px;
	letter-spacing: 0.1em;
}

a {
	text-decoration: none;
}

.userEditFrame {
	width: 80%;
	min-height: 530px;
	float: left;
}

.userEdit {
	width: 100%;
	height: 100%;
	margin: 20px 30px;
}

h3 {
	height: 40px;
	font-size: 27px;
	text-align: center;
	color: #159F5C;
}

table {
	width: 100%;
	table-layout: fixed;
}

table tr {
	width: 100%;
	height: 30px;
}

table tr td {
	width: 20%;
}

.hidesome {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

td {
	padding: 5px;
	text-align: center;
}

tr {
	text-align: center;
}

#list_page ul li {
	float: left;
	list-style-type: none;
}
#list_page{
	width:120px;
	float:right;
}
#bootom{
	width:240px;
}
table tr td{
   	width:20%;
   	border: 1px solid #ccc;
   	border-spacing: 2px;
}
#list_page1 {height:18px;text-align:center;width:100%;margin-top:22px;}
#list_page1 ul {padding:0px;margin:0px;background:#F9F5FF;font-size:12px;list-style:none;}
#list_page1 ul li {float:right;margin-left:3px;display:inline;border:1px solid #fff;}
#list_page1 ul li a{padding:0px 3px;text-decoration:none;color:#797979;display:block;}
#list_page1 ul li a:hover {background:#3398ff;color:#fff;}

h2{
	text-align:right;
}

	
</style>
</head>
<body>

	<jsp:include page="top.jsp" flush="true" />
	<jsp:include page="left.jsp" flush="true" />
	<div class="userEditFrame">
		<div class="userEdit">
			<h2><a href="userpage/login.jsp">登出</a></h2>
			<h3>活动新闻列表</h3>
			<br />
			<table>
				<tr>
					<td>活动新闻ID</td>
					<td width="60px">活动新闻标题</td>
					<td>活动新闻时间</td>
					<td>活动新闻作者</td>
					<td>活动新闻详情</td>
					<td>操作</td>
				</tr>
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

					ActionDaoService actionDaoService = new ActionDaoServiceImpl();
					List<Action> list = actionDaoService.findAllNews();
					//分页显示每页新闻
					List<Action> param = actionDaoServiceImpl.findPageNews(pageIndex,
							pageSize);
				%>
				<%
					int i=0;
					//一定要调用方法把集合遍历出来使用
					for (Action action : param) {
					i++;
				%>
				<tr <c:if test="${i%2==0}">class="bianse"</c:if>>
					<td><%=action.getAid()%></td>
					<td class="hidesome"><%=action.getAtopic()%></td>
					<td><%=action.getAtime()%></td>
					<td><%=action.getAuthor()%></td>
					<td class="hidesome"><%=action.getAwords()%></td>
					<td><a
						href="<%=request.getContextPath()%>/actionbackpage/newsEdit.jsp?aid=<%=action.getAid()%>">&nbsp;&nbsp;&nbsp;修改</a>
						<a
						href="<%=request.getContextPath()%>/servlet/action/ActionDel?opr=del&aid=<%=action.getAid()%>">&nbsp;&nbsp;&nbsp;删除</a>
					</td>
				</tr>
				<%
					}
				%>
			</table>
			<br />
			<h2 style="text-align:right;margin-right:120px;">
				<a href="<%=request.getContextPath() %>/actionbackpage/newsAdd.jsp">添加</a>
			</h2>
			<div id="list_page1"><ul>
					<%
					if(pageIndex>1){
						 %>
						 <li><a
							href="<%=request.getContextPath()%>/actionbackpage/newsInfo.jsp?pageIndex=<%=pageIndex - 1%>">上一页</a></li>
						<% } %>
						<%if(pageIndex< Sumpage){%>
						<li><a
							href="<%=request.getContextPath()%>/actionbackpage/newsInfo.jsp?pageIndex=<%=pageIndex + 1%>">下一页</a></li>
						<li><a
							href="<%=request.getContextPath()%>/actionbackpage/newsInfo.jsp?pageIndex=<%=Sumpage%>">尾页</a></li>
            <%} %>
            <li>-- <%=actionDaoServiceImpl.findTotalCount() %>记录</li>
					
           
		</ul></div>
		</div>
	</div>

</body>
</html>