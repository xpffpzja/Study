package com.himedia.sp04.dao;

import com.himedia.sp04.dto.StudentDto;
import com.himedia.sp04.util.DbManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StudentDao {

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    DbManager db;

    public StudentDao(DbManager db){
        this.db = db;
    }

    public void insertStudent(StudentDto std) {
        con = db.getConnection();
        String sql = "insert into student(sNum, sId, sPw, sName, sAge, sGender, sMajor)"
                + " values(?, ?, ?, ?, ?, ?, ? )";
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, std.getsNum());
            pstmt.setString(2, std.getsId());
            pstmt.setString(3, std.getsPw());
            pstmt.setString(4, std.getsName());
            pstmt.setInt(5, std.getsAge());
            pstmt.setString(6, std.getsGender());
            pstmt.setString(7, std.getsMajor());
            pstmt.executeUpdate();
        } catch (SQLException e) {e.printStackTrace();
        } finally {db.close(con,pstmt,rs);
        }
    }

    public ArrayList<StudentDto> selectStudent() {
        ArrayList<StudentDto> list = new ArrayList<StudentDto>();
        String sql = "select * from student";
        con = db.getConnection();
        try {
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                StudentDto std = new StudentDto(
                        rs.getString("sNum"),
                        rs.getString("sId"),
                        rs.getString("sPw"),
                        rs.getString("sName"),
                        rs.getInt("sAge"),
                        rs.getString("sGender"),
                        rs.getString("sMajor")
                );
                list.add(std);
            }

        } catch (SQLException e){e.printStackTrace();
        } finally {db.close(con,pstmt,rs);}
        return list;
    }
}
