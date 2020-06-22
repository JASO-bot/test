package com.demo.servlet.action;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entity.action.Action;
import com.demo.service.action.ActionDaoService;
import com.demo.service.impl.action.ActionDaoServiceImpl;

public class ActionAdd extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("text/html;charset=UTF-8");
        
        int aid=Integer.parseInt(request.getParameter("aid"));
        String atopic=request.getParameter("atopic");
        String atime=request.getParameter("atime");
        String author=request.getParameter("author");
        String awords=request.getParameter("awords");
        
        Action action=new Action();
        action.setAid(aid);
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
			actionDaoService.addNews(action);
			//request.getRequestDispatcher("/designerbackpage/newsInfo.jsp").forward(request, response);
			response.sendRedirect(request.getContextPath()+"/actionbackpage/newsInfo.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
