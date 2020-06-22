<%@page import="com.demo.service.impl.user.UserServiceImpl"%>
<%@page import="com.demo.service.user.UserService"%>
<%@page import="com.demo.entity.user.Userpojo"%>
<%@ page language="java" import="java.util.*,com.demo.entity.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>用户信息</title>
<style>
   *{
      padding: 0;
      margin: 0;
   }
   body{
   	height:100%;
   	font-size:14px;
   	letter-spacing:0.1em;
   }
   a{
   	text-decoration:none;
   }
   .userEditFrame{
   		width:80%;
   		min-height:530px;
   		float:left;
   }
   .userEdit{
   		width:100%;
   		height:100%;
   		margin:20px 30px;
   }
   h3{
   	 height:40px;
   	 font-size:27px;
   	 text-align:center;
   	 color:#159F5C;
   }
   
   table{
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    border-spacing: 2px;
    border-color: grey;
   	width:100%;
   	border: 1px solid #ccc;
   	;
   }
   
   tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
	}
	table[Attributes Style] {
    -webkit-border-horizontal-spacing: 0px;
    -webkit-border-vertical-spacing: 0px;
	}
	.providerTable tr:nth-child(odd) {
    background: #f6f7f9;
	}
   table tr{
   	width:100%;
   	height:30px;
   	
   }
   table tr td{
   	width:20%;
   	
   	border: 1px solid #ccc;
   	border-spacing: 2px;
   }
</style>
<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="./js/info.js" ></script>
</head>
<body>

	<jsp:include   page="top.jsp" flush="true"/>
	<jsp:include   page="left.jsp" flush="true"/>
	<div class="userEditFrame">
		<div class="userEdit">
			<h3>用户列表</h3>
			<br/>
			<table>
				<tr>
					<td>用户ID</td>
					<td>用户名称</td>
					<td>用户密码</td>
					<td>用户类型</td>
					<td>操作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/userAddServlet">添加</a></td>
				</tr>
			<%
					UserService userService = new UserServiceImpl();
					List<Userpojo> userList = userService.findUserList();
					//List<Userpojo> userList = (List<Userpojo>)request.getAttribute("userList");
					for(Userpojo user : userList){
			%>
				<tr>
					<td><%=user.getUserid() %></td>
					<td><%=user.getUsername() %></td>
					<td><%=user.getUserpwd() %></td>
								<%
                            	if(user.getUtypeID()==0){
                            	 %>
                            	<td>超级管理员</td>
                            	 <%
                            	}else if(user.getUtypeID()==1){ %>
                            	<td>管理员</td>                       	
                            	<%
                            	}else if(user.getUtypeID()==2){%>
                            	<td>游客</td>
                            	<% 
                            	}
                            	%>
					<td>
						<a href="<%=request.getContextPath() %>/userEditServlet?userId=<%=user.getUserid() %>">编辑</a>
						
						<span>删除</span>
						<input id="click" name="userId" type="button" value="<%=user.getUserid() %>" class="click" />
				</tr>
			<%
				}
			%>
			</table>
			
			<br/>
		</div>		
	</div>

	
</body>
</html>