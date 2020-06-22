package com.demo.servlet.Designer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entity.Designer.DesignerPojo;
import com.demo.service.Designer.DesignerService;
import com.demo.service.impl.Designer.DesignerServiceImpl;
import com.demo.util.PageSupport;


public class DesignerServlet extends HttpServlet{
	  /**
	 * 
	 */
	private static final long serialVersionUID = -3188823526685365919L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        String contextPath = request.getContextPath();
	        String opr = request.getParameter("opr");//a标签转发请带上opr值
	        
	        DesignerService designerService = new DesignerServiceImpl();

	        if ("del".equals(opr)) { // 删除设计师
	            String did = request.getParameter("did");
	            try {
	                int result = designerService.deleteDesignerBydid(Integer.parseInt(did)); 
	                request.getRequestDispatcher("/designerbackpage/userInfo.jsp").forward(request,//转跳网页的地址需要修改
                            response);
//	                request.getRequestDispatcher("/designerpage/designerlist.jsp").forward(request,//转跳网页的地址需要修改
//                            response);
	            } catch (Exception e) {
	                out.print("<script type=\"text/javascript\">");
	                out.print("alert(\"删除失败，请联系管理员！点击确认返回主题列表\");");
	                out.print("location.href=\"" + contextPath
	                        + "/util/topics?opr=list\";");
	                out.print("</script>");
	            }
	        } else if ("update".equals(opr)) { // 更新设计师
        	
//	        	 "UPDATE `designer` SET `dimg` = ?,`dname`=?,`dlevel`=?,`dworks`=?,"
//			  		+ "`dtime`=?,`dstyle`=?,`school`=?,`dworkname`=?,`principle`=?,`working`=? WHERE `did` = ?";
	        	String did = request.getParameter("did");
	            String dimg = request.getParameter("dimg");
	            String dname = request.getParameter("dname");
	            String dtime = request.getParameter("dtime");
	            String dlevel = request.getParameter("dlevel");
	            String dworks = request.getParameter("dworks");
	            String dstyle = request.getParameter("dstyle");
	            String school = request.getParameter("school");
	            String dworkname = request.getParameter("dworkname");
	            String principle = request.getParameter("principle");
	            String working = request.getParameter("working");
	            
	            DesignerPojo designerPojo = new DesignerPojo();
	            
	            designerPojo.setDid(Integer.parseInt(did));
	            designerPojo.setDname(dname);
	            designerPojo.setDimg(dimg);
	            designerPojo.setDlevel(dlevel);
	            designerPojo.setDtime(Integer.parseInt(dtime));
	            designerPojo.setDworks(Integer.parseInt(dworks));
	            designerPojo.setDstyle(dstyle);
	            designerPojo.setSchool(school);
	            designerPojo.setDworkname(dworkname);
	            designerPojo.setPrinciple(principle);
	            designerPojo.setWorking(Integer.parseInt(working));
	            
	            try {
	                int result = designerService.updateDesigner(designerPojo);
	                
	                out.print("alert(\"修改成功！\");");
		            
	                request.getRequestDispatcher("/designerbackpage/userInfo.jsp").forward(request,//转跳网页的地址需要修改
                            response);
//	                if (result == -1) {
//	                    out.print("<script type=\"text/javascript\">");
//	                    out.print("alert(\"当前主题已存在，请输入不同的主题！\");");
//	                    out.print("location.href=\"" + contextPath
//	                            + "/newspages/topic_modify.jsp?tid=" + tid
//	                            + "&tname=" + tname + "\";");
//	                    out.print("</script>");
//	                } else if (result == 0) {
//	                    out.print("<script type=\"text/javascript\">");
//	                    out.print("alert(\"未找到相关主题，点击确认返回主题列表\");");
//	                    out.print("location.href=\"" + contextPath
//	                            + "/util/topics?opr=list\";");
//	                    out.print("</script>");
//	                } else {
//	                    out.print("<script type=\"text/javascript\">");
//	                    out.print("alert(\"已经成功更新主题，点击确认返回主题列表\");");
//	                    out.print("location.href=\"" + contextPath
//	                            + "/util/topics?opr=list\";");
//	                    out.print("</script>");
//	                }
	            } catch (Exception e) {
	                out.print("<script type=\"text/javascript\">");
	                out.print("alert(\"更新失败，请联系管理员！点击确认返回主题列表\");");
	                out.print("location.href=\"" + contextPath
	                        + "/util/topics?opr=list\";");
	                out.print("</script>");
	            }
	        } else if (opr.equals("list")) {//显示所有设计师
	            List<DesignerPojo> alllist = null;
	            try {
	                alllist = designerService.getDesigner();
	            } catch (SQLException e) {
	                e.printStackTrace();
	                alllist = new ArrayList<DesignerPojo>();
	            }
	            request.setAttribute("list", alllist);
	            request.getRequestDispatcher("/designerbackpage/userInfo.jsp").forward(request,//转跳网页的地址需要修改
                        response);
	        } else if (opr.equals("add")) {// 添加设计师
	        	
	        	 	String dimg = request.getParameter("dimg");
		            String dname = request.getParameter("dname");
		            String dlevel = request.getParameter("dlevel");
		            String dworks = request.getParameter("dworks");
		            String dtime = request.getParameter("dtime");
		            String dstyle = request.getParameter("dstyle");
		            String school = request.getParameter("school");
		            String dworkname = request.getParameter("dworkname");
		            String principle = request.getParameter("principle");
		            String working = request.getParameter("working");
	            
		            DesignerPojo designerPojo = new DesignerPojo();
		            
		            designerPojo.setDimg(dimg);
		            designerPojo.setDname(dname);
		            designerPojo.setDlevel(dlevel);
		            designerPojo.setDworks(Integer.parseInt(dworks));
		            designerPojo.setDtime(Integer.parseInt(dtime));
		            designerPojo.setDstyle(dstyle);
		            designerPojo.setSchool(school);
		            designerPojo.setDworkname(dworkname);
		            designerPojo.setPrinciple(principle);
		            designerPojo.setWorking(Integer.parseInt(working));
		            
	            try {
	                int result = designerService.addDesigner(designerPojo);
	                
	                out.print("alert(\"添加成功！\");");
		            
	                request.getRequestDispatcher("/designerbackpage/userInfo.jsp").forward(request,//转跳网页的地址需要修改
                            response);
//	                if (result == -1) {
//	                    out.print("<script type=\"text/javascript\">");
//	                    out.print("alert(\"当前主题已存在，请输入不同的主题！\");");
//	                    out.print("location.href=\"" + contextPath
//	                            + "/newspages/topic_add.jsp\";");
//	                    out.print("</script>");
//	                } else {
//	                    out.print("<script type=\"text/javascript\">");
//	                    out.print("alert(\"主题创建成功，点击确认返回主题列表！\");");
//	                    out.print("location.href=\"" + contextPath
//	                            + "/util/topics?opr=list\";");
//	                    out.print("</script>");
//	                }
	            } catch (Exception e) {
	                out.print("<script type=\"text/javascript\">");
	                out.print("alert(\"添加失败，请联系管理员！点击确认返回主题列表\");");
	                out.print("location.href=\"" + contextPath
	                        + "/util/topics?opr=list\";");
	                out.print("</script>");
	            }
	            
	        }else if ("listpage".equals(opr)) {
	        	
                String pageIndex = request.getParameter("pageIndex");// 获得当前页数
                int pageno  = Integer.parseInt(pageIndex);
//                List<DesignerPojo> latests = designerService
//                        .getDesignerListByPage(pageno, 9);
                
//                List<Topic> list = topicService.findAllTopics();
//                List<News> list4 = null;
//                String tid = request.getParameter("tid");
                System.out.println( pageno);
                if (pageIndex == null
                        || (pageIndex = pageIndex.trim()).length() == 0) {
                    pageIndex = "1";
                }
//                int currPageNo = Integer.parseInt(pageIndex);
                if (pageno < 1)
                	pageno = 1;
                PageSupport pageSupport = new PageSupport();
                pageSupport.setPageNo(pageno); // 设置当前页码
                pageSupport.setPageSize(9); // 设置每页显示条数
//                if (tid == null || (tid = tid.trim()).length() == 0) {
                    designerService.getDesignerListByPage(pageSupport.getPageNo(), pageSupport.getPageSize()); // 分页查询新闻
//                    request.setAttribute("pageSupport", pageSupport);
//                    request.getRequestDispatcher("/designerlist.jsp").forward(request,
//                            response);
//                    list4 = pageObj.getNewsList();
	        out.flush();
	        out.close();
	    }
	}
	    public void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        request.setCharacterEncoding("UTF-8");
	        this.doGet(request, response);
	    }

}
