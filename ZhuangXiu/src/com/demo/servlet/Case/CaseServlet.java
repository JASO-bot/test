package com.demo.servlet.Case;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entity.Case.CasePojo;
import com.demo.service.Case.CaseService;
import com.demo.service.impl.Case.CaseServiceImpl;
import com.demo.util.PageSupport;



public class CaseServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String contextPath = request.getContextPath();
        String opr = request.getParameter("opr");//a标签转发请带上opr值
        
        CaseService caseService = new CaseServiceImpl();

        if ("del".equals(opr)) { // 删除设计师
            String id = request.getParameter("id");
            try {
                int result = caseService.deleteCaseByid(Integer.parseInt(id)); 
                request.getRequestDispatcher("/casebackpage/caseinfo.jsp").forward(request,
                        response);
//                request.getRequestDispatcher("/designerpage/designerlist.jsp").forward(request,//转跳网页的地址需要修改
//                        response);
            } catch (Exception e) {
                out.print("<script type=\"text/javascript\">");
                out.print("alert(\"删除失败，请联系管理员！点击确认返回主题列表\");");
                out.print("location.href=\"" + contextPath
                        + "/util/topics?opr=list\";");
                out.print("</script>");
            }
        } else if ("update".equals(opr)) { // 更新设计师
    	
//        	 "UPDATE `designer` SET `dimg` = ?,`dname`=?,`dlevel`=?,`dworks`=?,"
//		  		+ "`dtime`=?,`dstyle`=?,`school`=?,`dworkname`=?,`principle`=?,`working`=? WHERE `did` = ?";
        	String id = request.getParameter("id");
        	String img = request.getParameter("img");
        	String time =request.getParameter("time");
        	SimpleDateFormat smt = new SimpleDateFormat("yyyy-MM-dd");
        	Date d_datein = null;
			try {
				d_datein = smt.parse(time);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
            
            CasePojo casePojo = new CasePojo();
            
            
            casePojo.setImg(img);
            casePojo.setTime(d_datein);
            casePojo.setId(Integer.parseInt(id));
            try {
                int result = caseService.updateCase(casePojo);
                
                out.print("alert(\"修改成功！\");");
	            
                response.sendRedirect(request.getContextPath()+"/casebackpage/caseinfo.jsp");
            } catch (Exception e) {
                out.print("<script type=\"text/javascript\">");
                out.print("alert(\"更新失败，请联系管理员！点击确认返回主题列表\");");
                out.print("location.href=\"" + contextPath
                        + "/util/topics?opr=list\";");
                out.print("</script>");
            }
        } else if (opr.equals("list")) {//显示所有设计师
            List<CasePojo> alllist = null;
            try {
                alllist = caseService.getCasePojos();
            } catch (SQLException e) {
                e.printStackTrace();
                alllist = new ArrayList<CasePojo>();
            }
            request.setAttribute("list", alllist);
            
            request.getRequestDispatcher(request.getContextPath()+"/casebackpage/caseinfo.jsp").forward(request,
                    response);
        } else if (opr.equals("add")) {// 添加设计师
        	String id = request.getParameter("id");
        	String img = request.getParameter("img");
        	String time =request.getParameter("time");
        	SimpleDateFormat smt = new SimpleDateFormat("yyyy-MM-dd");
        	Date d_datein = null;
			try {
				d_datein = smt.parse(time);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
            
            
        	CasePojo casePojo = new CasePojo();
	            
        	casePojo.setId(Integer.parseInt(id));
            casePojo.setImg(img);
            casePojo.setTime(d_datein);
	            
            try {
                int result = caseService.addCase(casePojo);
                
                out.print("alert(\"添加成功！\");");
	            
                request.getRequestDispatcher("/casebackpage/caseinfo.jsp").forward(request,
                        response);
//                if (result == -1) {
//                    out.print("<script type=\"text/javascript\">");
//                    out.print("alert(\"当前主题已存在，请输入不同的主题！\");");
//                    out.print("location.href=\"" + contextPath
//                            + "/newspages/topic_add.jsp\";");
//                    out.print("</script>");
//                } else {
//                    out.print("<script type=\"text/javascript\">");
//                    out.print("alert(\"主题创建成功，点击确认返回主题列表！\");");
//                    out.print("location.href=\"" + contextPath
//                            + "/util/topics?opr=list\";");
//                    out.print("</script>");
//                }
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
//            List<DesignerPojo> latests = designerService
//                    .getDesignerListByPage(pageno, 9);
            
//            List<Topic> list = topicService.findAllTopics();
//            List<News> list4 = null;
//            String tid = request.getParameter("tid");
            System.out.println( pageno);
            if (pageIndex == null
                    || (pageIndex = pageIndex.trim()).length() == 0) {
                pageIndex = "0";
            }
//            int currPageNo = Integer.parseInt(pageIndex);
            if (pageno < 1)
            	pageno = 1;
            PageSupport pageSupport = new PageSupport();
            pageSupport.setPageNo(pageno); // 设置当前页码
            pageSupport.setPageSize(9); // 设置每页显示条数
//            if (tid == null || (tid = tid.trim()).length() == 0) {
            caseService.getCaseListByPage(pageSupport.getPageNo(), pageSupport.getPageSize());// 分页查询新闻
//                request.setAttribute("pageSupport", pageSupport);
//                request.getRequestDispatcher("/designerlist.jsp").forward(request,
//                        response);
//                list4 = pageObj.getNewsList();
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
