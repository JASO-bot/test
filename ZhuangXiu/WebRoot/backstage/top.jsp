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
   .top{
	   	 height:90px;
	   	 background-color:skyblue;
   }
   .top .topContent{
	    width:50%;
	    height:70%;
	   	font-size:28px;
	   	font-weight:900;
	   	color:#5976B2;
	   	margin:0 5%;
	   	padding-top:20px;
	   	letter-spacing:1em;
   }
</style>
<div class="top">
	<div class="topContent">
		后台管理系统
	</div>
</div>
