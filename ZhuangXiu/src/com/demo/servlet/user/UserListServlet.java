package com.demo.servlet.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entity.user.Userpojo;
import com.demo.service.user.UserService;
import com.demo.service.impl.user.UserServiceImpl;

@WebServlet(name="UserListServlet",urlPatterns="/userListServlet")
public class UserListServlet extends HttpServlet  {

	@Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	this.doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("123");
    	request.setCharacterEncoding("UTF-8");
    	 response.setContentType("text/html;charset=UTF-8");
        UserService userService = new UserServiceImpl();
        List<Userpojo> userList = userService.findUserList();
        
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("/userbackpage/userInfo.jsp").forward(request, response);
    }
	
}
