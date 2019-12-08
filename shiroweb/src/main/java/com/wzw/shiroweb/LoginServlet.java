package com.wzw.shiroweb;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "login",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("======执行doPost=========");
        response.setCharacterEncoding("utf-8");
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
        //创建Subject对象
        Subject subject= SecurityUtils.getSubject();
        //创建令牌
        UsernamePasswordToken token=new UsernamePasswordToken(userName,password);
        try {
            //登录，传入口令
            subject.login(token);
            //成功后跳转到success页面
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorInfo","用户名或密码错误");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("======执行doGet=========");
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }
}
