package com.whisper.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.whisper.entity.Goods;
import com.whisper.service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/admin/goods_list")
public class GoodsListServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Goods> list=new GoodsService().getAllGoods();
        String jsonString=JSON.toJSONString(list, SerializerFeature.WriteNullListAsEmpty,SerializerFeature.WriteNullStringAsEmpty);
        req.setAttribute("list",list);
        System.out.println(jsonString);
        req.getRequestDispatcher("/admin/goods_list.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
