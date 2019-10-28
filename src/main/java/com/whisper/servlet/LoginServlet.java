package com.whisper.servlet;

import com.whisper.dao.UserUtil;
import com.whisper.entity.User;
import com.whisper.service.UserService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login-do")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserService userService = new UserService();
        //User user = UserUtil.findUserWithPassword(username, password);
        /*Boolean ok = false;
        try {
            ok = UserService.login(username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (ok){
            HttpSession session=request.getSession();
            ServletContext application=this.getServletContext();
            User user= null;
            try {
                user = UserUtil.findUser(username);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            session.setAttribute("user",user);
            int num=0;
            if(application.getAttribute("userNum")!=null){
                num=(Integer) application.getAttribute("userNum");

            };
            num++;
            application.setAttribute("userNum",num);
            response.sendRedirect("index.jsp");
        }
*/
        User user = null;
        try {
            user = userService.findByName(username);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (user != null) {
            //out.println(user.toString());
            if (user.password.equals(password) ) {
                //request.setAttribute("user",user);
                HttpSession session=request.getSession();
                ServletContext application=this.getServletContext();

                session.setAttribute("user",user);
                int num=0;
                if(application.getAttribute("userNum")!=null){
                    num=(Integer) application.getAttribute("userNum");

                };
                num++;
                application.setAttribute("userNum",num);
                if (user.isAdmin){
                    request.getRequestDispatcher("/admin/goods_list").forward(request,response);

                }else {
                    //response.sendRedirect("/");
                    request.getRequestDispatcher("index.jsp").forward(request,response);

                }



            } else {
                request.setAttribute("info","登录失败，用户名或密码错误");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }

        }else{
            request.setAttribute("info","没有这个账户");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
