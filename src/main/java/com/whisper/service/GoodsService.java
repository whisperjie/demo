package com.whisper.service;

import com.whisper.dao.GoodsDao;
import com.whisper.entity.Goods;

import java.util.List;

public class GoodsService {
    public List<Goods> getAllGoods(){
        return new GoodsDao().getAllGoods();
    }
}
