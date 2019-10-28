package com.whisper.dao;

import com.whisper.Util.DbUtil;
import com.whisper.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserUtil {
    public static boolean addUser(User user) throws SQLException {
        User user1=findUser(user.name);
        if (user1!=null){
            return false;
        }
        Connection connection= DbUtil.instance.getConnection();
        String sql="insert into user(name,password,age,sex,isAdmin) values(?,?,?,?,?)";
        int ok=0;
        boolean work=false;
        PreparedStatement statement=null;
        //Boolean isAdmin=user.isAdmin;
        try{
        statement=connection.prepareStatement(sql);
        statement.setString(1,user.name);
        statement.setString(2,user.password);
        statement.setInt(3,user.age);
        statement.setString(4,user.sex);
       statement.setBoolean(5,user.isAdmin);
        ok=statement.executeUpdate();
        if (ok>0) work=!work;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return work;

    }
    public static User findUser(String name) throws SQLException {
        User user=null;
        Connection connection= DbUtil.instance.getConnection();
        String sql="select * from user where name=?";
        PreparedStatement statement=null;
        ResultSet rs=null;
        try {
            statement=connection.prepareStatement(sql);
            statement.setString(1,name);
            rs=statement.executeQuery();
            if(rs.next()){
                user=new User();
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setAge(Integer.parseInt(rs.getString("age")));
                user.setSex(rs.getString("sex"));
                user.setAdmin(rs.getBoolean("isAdmin"));
            }else{
                System.out.println("查无此人");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;

    }
    public static User findUserWithPassword(String name,String password) throws SQLException {
        User user=null;
        Connection connection= DbUtil.instance.getConnection();
        String sql="select * from user where name=? and password=?";
        PreparedStatement statement=null;
        ResultSet rs=null;
        try {
            statement=connection.prepareStatement(sql);
            statement.setString(1,name);
            statement.setString(2,password);
            rs=statement.executeQuery();
            if(rs.next()){
                user=new User();
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setAge(Integer.parseInt(rs.getString("age")));
                user.setSex(rs.getString("sex"));
                user.setAdmin(rs.getBoolean("isAdmin"));
            }else{
                System.out.println("用户名或密码错误");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;

    }
    public static User findUserByName(String name) throws SQLException {
        User user=null;
        Connection connection= DbUtil.instance.getConnection();
        String sql="select * from user where name=?";
        PreparedStatement statement=null;
        ResultSet rs=null;
        try {
            statement=connection.prepareStatement(sql);
            statement.setString(1,name);
          //  statement.setString(2,password);
            rs=statement.executeQuery();
            if(rs.next()){
                user=new User();
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setAge(Integer.parseInt(rs.getString("age")));
                user.setSex(rs.getString("sex"));
                user.setAdmin(rs.getBoolean("isAdmin"));
            }else{
                System.out.println("查无此人");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;

    }
}
