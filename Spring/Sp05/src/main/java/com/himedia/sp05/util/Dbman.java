package com.himedia.sp05.util;

import org.springframework.beans.factory.annotation.Autowired;

import java.sql.*;

public class Dbman {
//    private String driver ;
//    private String url ;
//    private String id ;
//    private String pw ;

//    @Autowired
//    Dbman(DbConInfo dbconinfo){
//        driver = dbconinfo.getDriver();
//        url = dbconinfo.getUrl();
//        id = dbconinfo.getId();
//        pw = dbconinfo.getPw();

    //@Autowired 로 위에 과정 생략

    @Autowired
    DbConInfo dbconinfo;

    public Connection getConnection() {
        Connection con = null;
        try {
            Class.forName(dbconinfo.getDriver());
            con = DriverManager.getConnection(dbconinfo.getUrl(),dbconinfo.getId(),dbconinfo.getPw());


        } catch (SQLException e) {e.printStackTrace();
        } catch (ClassNotFoundException e) {e.printStackTrace();
        }return con;
    }
    public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
        try {
            if (con != null) con.close();
            if (pstmt != null) pstmt.close();
            if (rs != null) rs.close();
        }catch (SQLException e) {e.printStackTrace();}
    }
}
