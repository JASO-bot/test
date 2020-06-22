<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function check(){
		var tname = document.getElementById("tname1");

		if(tname.value == ""){
			alert("请输入案例id！！");
			tname.focus();
			return false;
		}		
		return true;
	}
	</script>
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
   	width:110%;
   	text-align:centre;
   }
   table tr{
   	width:100%;
   	height:70px;
   }
   table tr td{
   	width:20%;
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
			<h5>案例添加</h5>
			<div id="main">
  	<div id="opt_area">
    <form action="<%=request.getContextPath() %>/util/Case?opr=add" method="post" onsubmit="return check()">
     <table>
        <tr><td>添加案例ID </td><td>
        <input name="id" type="text" class="opt_input" id="tname1" />
      </td></tr>
      
      <tr><td> 添加案例图片</td><td>
        <input name="img" type="text" class="opt_input" id="tname"/>
      </td></tr>
      
     <tr><td> 添加案例发布时间</td><td>
        <input name="time" type="text" class="opt_input" id="tname"/>
       </td></tr>
       
      
      </table>
      <input name="action" type="hidden" value="addtopic"/>
      <input type="submit" value="提交" class="opt_sub" />
    </form>
    </div>
	 </div>
		</div>		
	</div>
</body>
</html>