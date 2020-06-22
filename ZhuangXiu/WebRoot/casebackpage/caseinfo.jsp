<%@page import="com.demo.entity.Case.CasePojo"%>
<%@page import="com.demo.service.impl.Case.CaseServiceImpl"%>
<%@page import="com.demo.service.Case.CaseService"%>
<%@page import="com.demo.util.PageSupport"%>
<%@page import="com.demo.service.Designer.DesignerService"%>
<%@page import="com.demo.service.impl.Designer.DesignerServiceImpl"%>
<%@page import="com.demo.entity.Designer.DesignerPojo"%>
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
<link href="css/css.css" rel="stylesheet" type="text/css" />
	<script src="js/js.js" type="text/javascript"></script>
	<link href="css/muyu.css" rel="stylesheet" type="text/css" />
<title>案例信息</title>
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
   	#list_page1 {height:18px;text-align:center;width:100%;margin-top:22px;}
	#list_page1 ul {padding:0px;margin:0px;background:#F9F5FF;font-size:12px;list-style:none;}
	#list_page1 ul li {float:right;margin-left:3px;display:inline;border:1px solid #fff;}
	#list_page1 ul li a{padding:0px 3px;text-decoration:none;color:#797979;display:block;}
	#list_page1 ul li a:hover {background:#3398ff;color:#fff;}
   
</style>
</head>
<body>

	<jsp:include   page="top.jsp" flush="true"/>
	<jsp:include   page="left.jsp" flush="true"/>
	<div class="userEditFrame">
		<div class="userEdit">
			<h3>案例列表</h3>
			<br/>
			<table>
				<tr>
					<td>案例ID</td>
					<td>案例路径</td>
					<td>案例操作<a href="<%=request.getContextPath() %>/casebackpage/caseAdd.jsp">添加</td>
				</tr>
			<%               	                     
                  	String currentPage = request.getParameter("pageIndex");
                		if("".equals(currentPage)||currentPage==null){
						currentPage="0";                	
                	}
                	
                	CaseService caseService = new CaseServiceImpl();
                	
                	int pageNo = Integer.parseInt(currentPage);
                	int pageSize = 9;
                	int totalCount = caseService.getCaseTotalCount();
                	PageSupport pageSupport = new PageSupport();
                	pageSupport.setPageNo(pageNo);
                	pageSupport.setPageSize(pageSize);
                	pageSupport.setTotalCount(totalCount);
                	int totalCountPage = pageSupport.getTotalCountPage();
                	
                	
                	
                	List<CasePojo> casePojos = caseService.getCaseListByPage(pageNo, pageSize);
                	
                	     		               	
                 %>
				<tr>
				   <% 
          for(CasePojo list:casePojos){              		               	
                 %>
					<td>	 <a href="<%=request.getContextPath() %>/case/casedetail.jsp?id=<%=list.getId() %>">
		       	 案例id：<%=list.getId() %> </a></td>
		       <td>	 <%=list.getImg() %>  </td>
					<td>
						<a href="<%=request.getContextPath() %>/casebackpage/caseEdit.jsp?id=<%=list.getId() %>">&nbsp;&nbsp;&nbsp;修改</a>
						<a href="<%=request.getContextPath() %>/util/Case?opr=del&id=<%=list.getId() %>">&nbsp;&nbsp;&nbsp;删除</a>
					</td>
				</tr>
			<%
				}
			%>
			</table>
			<div id="list_page1"><ul>
					<%
					if(pageNo>1){
						 %>
						 <li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=0">首页</a></li>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=<%=pageNo-4%>">上一页</a></li>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=1" style='color:#fff;background-color:#0056ad'>1</a></li>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=5" >2</a></li>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=9" >3</a></li>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=14" >4</a></li>
						<%} if(pageNo<totalCountPage){%>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=1">首页</a></li>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=<%=pageNo+4%>">下一页</a></li>
						<li><a href="<%=request.getContextPath() %>/casebackpage/caseinfo.jsp?opr=listpage&pageIndex=<%=totalCountPage%>">尾页</a></li>
           				<li>-- <%=totalCount %>记录</li>
            <%} %>
					
           
		</ul></div>
			<br/>
		</div>		
	</div>
	
</body>
</html>