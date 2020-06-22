package com.demo.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.service.user.UserService;
import com.demo.service.impl.user.UserServiceImpl;

@WebServlet(name="UserAddServlet",urlPatterns="/userAddServlet")
public class UserAddServlet extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/userbackpage/userAdd.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html;charset=UTF-8");
        System.out.println("456");
        String name=request.getParameter("username");
        String password=request.getParameter("userpwd");
        Integer userType=Integer.parseInt(request.getParameter("utypeID"));
        
        
        
        UserService userService = new UserServiceImpl();
        userService.addUser(name, password, userType);
			response.sendRedirect("userListServlet");
        
    }
	
}
