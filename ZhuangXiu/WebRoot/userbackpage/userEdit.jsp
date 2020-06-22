<%@page import="java.util.List"%>
<%@page import="com.demo.service.user.UserService"%>
<%@page import="com.demo.service.impl.user.UserServiceImpl"%>
<%@page import="com.demo.entity.user.Userpojo"%>
<%@ page language="java" import="com.demo.entity.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户编辑</title>
<style>
   *{
      padding: 0;
      margin: 0;
   }
   body{
   	height:100%;
   }
   .userEditFrame{
   		width:80%;
   		min-height:530px;
   		float:left;
   }
   .userEdit{
   		width:370px;
   		height:300px;
   		margin:70px auto;
   }
   .userEdit h5{
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
   
   .btnDiv{
   		float:right;
   }
   .btnDiv input{
   		width:60px;
   		height:30px;
   }
</style>
</head>
<body>
	<jsp:include   page="top.jsp" flush="true"/>
	<jsp:include   page="left.jsp" flush="true"/>
	<div class="userEditFrame">
		<div class="userEdit">
			<h5>用户编辑</h5>
			
			<form method="post" action="userEditServlet">
			
				<table>
				<%
					//UserService userService = new UserServiceImpl();
					//List<Userpojo> userList = userService.findUserList();
					String userId = request.getParameter("userId");
					//List<Userpojo> userList = (List<Userpojo>)request.getAttribute("userList");
					//for(Userpojo user : userList){
				%>
					<input type="hidden" name="userId" value="<%=userId %>" />
							<%
								//}
							%>
					<tr><td>用户名称:</td>
					
						<td>
							<input type="text" name="username" value=""/>
						</td>
					</tr>
					
					<tr><td>用户密码:</td><td><input type="password" name="userpwd" value=""/></td></tr>
					<tr><td>用户类型:</td>
						<td>
							
								<label><input name="utypeID" type="radio" value="0" checked="checked" />超级管理员 </label> 
								<label><input name="utypeID" type="radio" value="1"  />管理员 </label> 
								<label><input name="utypeID" type="radio" value="2"  />游客 </label> 
							
							
						</td>
					</tr>
				</table>
				<div class="btnDiv">
					<input type="reset" value="重置">
					<input type="submit" value="提交">
				</div>
			</form>
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
					<td>操作：无</td>
				</tr>
			<%		
					Integer userId1=Integer.parseInt(userId);
					UserService userService = new UserServiceImpl();
					List<Userpojo> userList = userService.findUserById(userId1);
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
                            	<% 
                            	}
                            	%>
					<td>
				</td>
			</tr>
			</table>
		</div>		
	</div>
</body>
</html>