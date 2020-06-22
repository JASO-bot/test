package com.demo.servlet.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entity.action.Action;
import com.demo.service.action.ActionDaoService;
import com.demo.service.impl.action.ActionDaoServiceImpl;

public class ActionDel extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("text/html;charset=UTF-8");
        int aid=Integer.parseInt(request.getParameter("aid"));
        Action action=new Action();
        action.setAid(aid);
        ActionDaoService actionDaoService=new ActionDaoServiceImpl();
        try {
			actionDaoService.deleteNew(action);
			//request.getRequestDispatcher("/designerbackpage/newsInfo.jsp").forward(request, response);
			response.sendRedirect(request.getContextPath()+"/actionbackpage/newsInfo.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}

}
