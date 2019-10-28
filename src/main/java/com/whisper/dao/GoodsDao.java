package com.whisper.dao;

import com.whisper.entity.Goods;

import java.util.ArrayList;
import java.util.List;

public class GoodsDao {
    public static List<Goods> goodsList =new ArrayList<Goods>();


    static {
        goodsList.add(new Goods("葡萄","西班牙葡萄",50.0,100.0));
        goodsList.add(new Goods("黄瓜","能吃又能用",8.0,1000.0));
    }

    public List<Goods> getAllGoods()  {
        return this.goodsList;

    }
}
