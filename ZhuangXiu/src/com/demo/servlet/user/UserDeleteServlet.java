package com.demo.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.service.user.UserService;
import com.demo.service.impl.user.UserServiceImpl;

@WebServlet(name="UserDeleteServlet",urlPatterns="/userDeleteServlet")
public class UserDeleteServlet extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("text/html;charset=UTF-8");
        
        Integer userId=Integer.parseInt(request.getParameter("userId"));
        System.out.println(userId);
        UserService userService = new UserServiceImpl();
        userService.deleteUser(userId);
        response.sendRedirect("userListServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	this.doGet(request, response);
    }
}
