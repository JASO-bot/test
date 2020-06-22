package com.demo.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entity.user.Userpojo;
import com.demo.service.user.UserService;
import com.demo.service.impl.user.UserServiceImpl;

@WebServlet(name="UserEditServlet",urlPatterns="/userEditServlet")
public class UserEditServlet extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/userbackpage/userEdit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("text/html;charset=UTF-8");
        
       
        
        String name=request.getParameter("username");
        String password=request.getParameter("userpwd");
        Integer userType=Integer.parseInt(request.getParameter("utypeID"));
        Integer userId=Integer.parseInt(request.getParameter("userId"));
        
        System.out.println(name);
        System.out.println(password);
        System.out.println(userType);
        System.out.println(userId);
        
        UserService userService = new UserServiceImpl();
        userService.editUser(name, password, userType,userId);
        response.sendRedirect("userListServlet");
    }
	
}
