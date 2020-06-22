<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	function check(){
		var aid = document.getElementById("aid");
		if(aid.value == ""){
			alert("请输入活动信息ID");
			aid.focus();
			return false;
		}		
		return true;
	}
	</script>
<title>后台添加</title>
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
   		width:500px;
   		 height:40px;
	   	 font-size:27px;
	   	 text-align:center;
	   	 color:rgb(255,67,68);
   }
   table{
   	width:780px;
   	text-align:centre;
   	margin-top:20px;
   }
   table tr{
   	width:100%;
   	height:70px;
   }
   table tr td{
   	width:20%;
   	
   }
   .ckeditor{
   		margin-top:20px;
   }
   .btnDiv{
   		float:right;
   }
   .btnDiv input{
   		width:60px;
   		height:30px;
   }
   .opt_input{
   		width:350px;
   		height:40px;
   		border-radius:5px 5px 5px 5px;
   		border: 1px solid #CAE1FF;
   }
   #submit{
   background: rgb(255,67,68);
    width: 300px;
    height: 42px;
    color: white;
    margin-top:30px;
    font-size: 22px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    box-shadow: 0px 0px 25px red;
    border: none;
    float:right;
   }
   #tj{
   	width:410px;
   	height:100px;
   }
   .wen{
   text-align:left;
   }
   table tr span{
   	color:red;
   	font-size:15px;
   }
</style>
</head>
<body>
	<jsp:include   page="top.jsp" flush="true"/>
	<jsp:include   page="left_long.jsp" flush="true"/>
	<div class="userAddFrame">
		<div class="userAdd">
			<h5>活动信息添加</h5>
			<div id="main">
  	<div id="opt_area">
    <form action="<%=request.getContextPath() %>/servlet/action/ActionAdd" method="post" onsubmit="return check()">
     <table>
        <tr><td class="wen">添加活动新闻ID：</td><td>
        <input name="aid" type="text" class="opt_input" id="aid" />
      </td></tr>
      
      <tr><td class="wen">添加活动新闻标题：</td><td>
        <input name="atopic" type="text" class="opt_input"/>
      </td></tr>
      
      <tr><td class="wen">添加新闻发布时间 ：</td><td>
        <input name="atime" type="date" class="opt_input"/><span>&nbsp;&nbsp;&nbsp;时间格式：yyyy-MM-dd</span>
      </td></tr>
      
     <tr><td class="wen">添加新闻作者：</td><td>
        <input name="author" type="text" class="opt_input"/>
       </td></tr>
       
      <tr><td class="wen">添加新闻内容：</td><td>
        <textarea name="awords" class="ckeditor"/></textarea>
       </td></tr>
       </table>
      <div id="tj"><input type="submit" id="submit" value="提交" class="opt_sub" /></div>
    </form>
    </div>
	 </div>
		</div>		
	</div>
</body>
</html>