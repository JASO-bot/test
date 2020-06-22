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
			alert("请输入设计师id！！");
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
			<h5>设计师添加</h5>
			<div id="main">
  	<div id="opt_area">
    <form action="<%=request.getContextPath() %>/util/Designer?opr=add" method="post" onsubmit="return check()">
     <table>
        <tr><td>添加设计师名字 </td><td>
        <input name="dname" type="text" class="opt_input" id="tname1" />
      </td></tr>
      
      <tr><td> 添加设计师 头像路径 </td><td>
        <input name="dimg" type="text" class="opt_input" id="tname"/>
      </td></tr>
      
      <tr><td> 添加设计师职位 </td><td>
        <input name="dlevel" type="text" class="opt_input" id="tname"/>
      </td></tr>
      
     <tr><td> 添加设计师从业时间</td><td>
        <input name="dtime" type="text" class="opt_input" id="tname"/>
       </td></tr>
       
      <tr><td> 添加设计师 作品数</td><td>
        <input name="dworks" type="text" class="opt_input" id="tname"/>
       </td></tr>
       
      <tr><td>添加设计师设计风格 </td><td>
        <input name="dstyle" type="text" class="opt_input" id="tname"/>
      </td></tr>
     
      <tr><td> 添加设计师 设计案例 </td><td>
        <input name="dworkname" type="text" class="opt_input" id="tname"/>
     </td></tr>
     
       <tr><td> 添加设计师 毕业院校 </td><td>
        <input name="school" type="text" class="opt_input" id="tname"/>
      </td></tr>
      
        <tr><td> 添加设计师 设计原则</td><td>
        <input name="principle" type="text" class="opt_input" id="tname"/>
      </td></tr>
      
      <tr><td> 添加设计师 预约状态（0/1）</td><td>
        <input name="working" type="text" class="opt_input" id="tname"/>
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