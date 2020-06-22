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

@WebServlet(name="LoginServlet",urlPatterns="/loginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/userpage/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("33333");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Userpojo user=new Userpojo();
        String name=request.getParameter("username");
        String password=request.getParameter("userpwd");
        System.out.println(name);
        System.out.println(password);
        
        
        UserService userService = new UserServiceImpl();
        int res = userService.userLogin(name, password);
        if(res==2){
        	//游客
    		request.getRequestDispatcher("/case/firstpage.jsp").forward(request, response);
        }else if(res==0||res==1){
        	//超管||管理
        	request.getRequestDispatcher("/userbackpage/userInfo.jsp").forward(request, response);
        }else{
    		request.setAttribute("remind", "用户名或密码错误-请重新登录");
    		request.getRequestDispatcher("/userpage/login.jsp").forward(request, response);
        }
    }
}
