<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   *{
      padding: 0;
      margin: 0;
   }
   body{
   	height:100%;
   }
   .userAddFrame{
   		width:80%;
   		min-height:530px;
   		float:left;
   }
   .userAdd{
   		width:370px;
   		height:300px;
   		margin:70px auto;
   }
   .userAdd h5{
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
	<div class="userAddFrame">
		<div class="userAdd">
			<h5>用户添加</h5>
			<form method="post" action="userAddServlet">
				<table>
					<tr><td>用户名称:</td><td><input type="text" name="username"/></td></tr>
					<tr><td>用户密码:</td><td><input type="password" name="userpwd"/></td></tr>
					<tr><td>用户类型:</td>
						<td>
							<label><input name="utypeID" type="radio" value="0" />超级管理员 </label> 
							<label><input name="utypeID" type="radio" value="1" />管理员 </label> 
							<label><input name="utypeID" checked type="radio" value="2" />游客 </label> 
						</td>
					</tr>
				</table>
				<div class="btnDiv">
					<input type="reset" value="重置">
					<input type="submit" value="提交">
				</div>
			</form>
		</div>		
	</div>
</body>
</html>