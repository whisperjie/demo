package com.whisper.Util;

import java.sql.*;

/**
 * 单例模式
 * 私有化构造方法
 * 内部静态变量实例化当前类
 */
public class DbUtil {
    private static final String url="jdbc:mysql://127.0.0.1:3306/test";//?useSSL=false&serverTimezone=Asia/Shanghai&characterEncoding=utf8";
    private static final String user="root";
    private static final String password="password";
    public static Connection connection=null;
    public static DbUtil instance=new DbUtil();

    private DbUtil() {

    }

    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (Exception e){
            System.out.println("加载驱动失败");
        }
        try {
            connection= DriverManager.getConnection(url,user,password);
        } catch (SQLException e) {
            System.out.println("获取连接失败");
            e.printStackTrace();
        }
    }





    public  Connection getConnection(){
       /*Connection connection=null;
       try{
           Class.forName("com.mysql.cj.jdbc.Driver");
       }catch (Exception e){
           System.out.println("加载驱动失败");
       }
       try {
           connection= DriverManager.getConnection(url,user,password);
       } catch (SQLException e) {
           System.out.println("获取连接失败");
           e.printStackTrace();
       }*/
       return this.connection;
   }
   public static void close(ResultSet rs) throws SQLException {
        if (rs!=null) rs.close();
   }
    public static void close(PreparedStatement statement) throws SQLException {
        if (statement!=null) statement.close();
    }
    public static void close(Connection connection) throws SQLException {
        if (connection!=null) connection.close();
    }


}
