<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style>
  *{
      padding: 0;
      margin: 0;
   }
   .left{
		width:170px;
		min-height:530px;
		border-right:1px solid #D6EDF0;
		background-color:#D6EDF0;
		float:left;
   }
   ul{
   	 width:100%;
   	 height:100%;
   }
   ul li{
   	 height:40px;
   	 border-bottom:1px solid white;
   }
   ul li a{
    display:block;
    padding:15px 0;
   	text-decoration:none;
   	letter-spacing:0.5em;
   	font-size:13px;
   	font-weight:900;
   	text-align:center;
   	color:#5FADC1;
   }
</style>
<div class="left">
	<ul>
		<li><a href="<%=request.getContextPath() %>/userbackpage/userInfo.jsp">用户管理</a></li>
		<li><a href="<%=request.getContextPath() %>/actionbackpage/newsInfo.jsp">活动管理</a></li>
		<li><a href="<%=request.getContextPath() %>/designerbackpage/userInfo.jsp">设计师管理</a></li>
		<li><a href="#">案例管理</a></li>
	</ul>
</div>
