	$(document).ready(function() {
		$(".click").click(function (){
			if(confirm("是否删除")){
				//返回true
				//在这写个请求去删除就可以了啊
				
				 
				 $.ajax({
				        "url":"userDeleteServlet",
				　　　　　   "data":"userId="+$("td").find("input").val(),
				        "type":"post",
				        "dataType":"text",
				        "success":callback
				    });
				 function callback(){
					 alert("删除成功！");
					 window.open("./userbackpage/userInfo.jsp")
				 }
				return true;
			}else{
				//返回false
				//返回当前页面
				window.open("./userbackpage/userInfo.jsp")
				return false;
			}
		})
	})