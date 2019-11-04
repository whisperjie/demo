package com.whisper.servlet;

import com.whisper.dao.UserUtil;
import com.whisper.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import static java.lang.System.out;

@WebServlet("/ajax")
public class AjaxServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //System.out.println("ok");
        response.setContentType("text/text");
        response.setCharacterEncoding("UTF-8");
        String key=request.getParameter("key");
        System.out.println(key);
        User user=null;
        String msg="";
        try {
            user= UserUtil.findUser(key);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (user!=null){
            msg="此昵称已被注册";
        }else {
            msg="可以使用";
        }
       response.getWriter().append(msg);

    }
}
