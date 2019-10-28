package com.whisper.service;

import com.whisper.dao.UserUtil;
import com.whisper.entity.User;

import java.sql.SQLException;

public class UserService {
    public static boolean register(User user) throws SQLException {
        User user1=UserUtil.findUserByName(user.getName());
        if(user1!=null){
            return false;
        }
        Boolean ok=UserUtil.addUser(user);
        if (ok)return true;

        return false;

    }
    public static User queryUser(String name,String password) throws SQLException {
        return UserUtil.findUserWithPassword(name,password);
    }
    public static boolean login(String userName,String password) throws SQLException {
        User user=UserUtil.findUserByName(userName);
        if (user!=null){
            if (user.password.equals(password))return true;
        }
        return false;
    }
    public static User findByName(String name) throws SQLException {
        return UserUtil.findUserByName(name);
    }
    /*
    public static Boolean addUser(User user) throws SQLException {
        return UserUtil.addUser(user);
    }*/
}
