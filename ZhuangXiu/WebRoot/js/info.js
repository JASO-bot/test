	$(document).ready(function() {
		$(".click").click(function (){
			var params = $(this).attr("value");
			if(confirm("是否删除")){
				//返回true
				//在这写个请求去删除就可以了啊
				
				 
				 $.ajax({
				        "url":"userDeleteServlet",
				　　　　　   "data":"userId="+params,
				        "type":"post",
				        "dataType":"text",
				        "success":callback
				    });
				 function callback(){
					 alert("删除成功！");
					 window.location.reload();
				 }
				return true;
			}else{
				//返回false
				//返回当前页面
				window.location.reload();
				return false;
			}
		})
	})