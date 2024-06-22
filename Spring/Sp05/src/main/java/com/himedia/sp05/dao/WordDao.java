package com.himedia.sp05.dao;

import com.himedia.sp05.dto.WordDto;
import com.himedia.sp05.util.Dbman;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WordDao {

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;


//    @Autowired로 간소화~
//    public WordDao(Dbman db) {
//        this.db = db;
//    }

    @Autowired
    Dbman dbman;

    public void insertWord(WordDto wdto) {
        con = dbman.getConnection();
        String sql = "insert into wordset values(? , ?)";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, wdto.getWordKey());
            pstmt.setString(2, wdto.getWordValue());
            pstmt.executeUpdate();
        }catch(SQLException e){e.printStackTrace();
        }finally{dbman.close(con,pstmt,rs);
        }
    }

    public ArrayList<WordDto> selectAll() {

        ArrayList<WordDto> list = new ArrayList<WordDto>();
        String sql = "select * from wordset";
        con = dbman.getConnection();

        try {
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                WordDto wtd = new WordDto();
                wtd.setWordKey(rs.getString("wordKey"));
                wtd.setWordValue(rs.getString("wordValue"));
                list.add(wtd);
            }
        } catch (SQLException e){e.printStackTrace();
        } finally {dbman.close(con,pstmt,rs);}
        return list;

    }

    public WordDto searchWord(String input) {
        WordDto wdto = new WordDto();;
        con = dbman.getConnection();
        String sql = "select * from wordset where wordKey=?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, input);
            rs = pstmt.executeQuery();
            if (rs.next()) {

                wdto.setWordKey(rs.getString("wordKey"));
                wdto.setWordValue(rs.getString("wordValue"));
            } else{
                wdto=null;
            }
        }catch(SQLException e){e.printStackTrace();
        }finally{dbman.close(con,pstmt,rs);
        }
        return wdto;
    }
}
