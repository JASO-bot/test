package com.demo.servlet.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.dao.action.ActionDao;
import com.demo.dao.impl.action.ActionDaoImpl;
import com.demo.entity.action.Action;
import com.demo.service.action.ActionDaoService;
import com.demo.service.impl.action.ActionDaoServiceImpl;
import com.demo.util.DatabaseUtil;

public class ActionEdit extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("text/html;charset=UTF-8");
        
        //第一次
        //int aid=Integer.parseInt(request.getParameter("aid"));
        /*String atopic=request.getParameter("atopic");
        String atime=request.getParameter("atime");
        String author=request.getParameter("author");
        String awords=request.getParameter("awords");
        
        Action action=new Action();
        //action.setAid(aid);
        action.setAtopic(atopic);
        SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
        Date date;
		try {
			date = formatter.parse(atime);
			action.setAtime(date);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		
        action.setAuthor(author);
        action.setAwords(awords);
        ActionDaoService actionDaoService=new ActionDaoServiceImpl();
        try {
			actionDaoService.updateNew(action);
			//request.getRequestDispatcher("/designerbackpage/newsInfo.jsp").forward(request, response);
			response.sendRedirect(request.getContextPath()+"/actionbackpage/newsInfo.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}*/
        
        //第二次
        /*Action action=new Action();
        
        int aid=Integer.parseInt(request.getParameter("aid"));
        String atopic=request.getParameter("atopic");
        String atime=request.getParameter("atime");
        String author=request.getParameter("author");
        String awords=request.getParameter("awords");
        
        SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
        Date date;
        try {
			date = formatter.parse(atime);
			ActionDaoService actionDaoService=new ActionDaoServiceImpl();
	        actionDaoService.updateNew(atopic, date, author, awords, aid);
			
			Connection conn=DatabaseUtil.getConnection();
			ActionDao actionDao=new ActionDaoImpl(conn);
			actionDao.updateNew(atopic, date, author, awords, aid);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        response.sendRedirect(request.getContextPath()+"/actionbackpage/newsInfo.jsp");*/
        
        ActionDaoService actionDaoService=new ActionDaoServiceImpl();
		Action action=new Action();
		int aid=Integer.parseInt(request.getParameter("aid"));
		String atime=request.getParameter("atime");
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		try {
			date = formatter.parse(atime);
			String atopic=request.getParameter("atopic");
			String author=request.getParameter("author");
			String awords=request.getParameter("awords");
			action.setAtime(date);
			action.setAtopic(atopic);
			action.setAuthor(author);
			action.setAwords(awords);
			action.setAid(aid);
			actionDaoService.updateNew(action);
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath()+"/actionbackpage/newsInfo.jsp");
	
	}


}
