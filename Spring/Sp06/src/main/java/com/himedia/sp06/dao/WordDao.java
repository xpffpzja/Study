package com.himedia.sp06.dao;

import com.himedia.sp06.dto.WordDto;
import com.himedia.sp06.util.Dbman;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WordDao {
    Connection con=null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    @Autowired
    Dbman dbman;

    //public WordDao(Dbman db){
    //    dbman = db;
    //}

    public ArrayList<WordDto> selectAll() {
        ArrayList<WordDto> list = new ArrayList<WordDto>();
        String sql = "select * from wordset";
        con = dbman.getConnection();
        try {
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while( rs.next() ) {
                WordDto wdto = new WordDto();
                wdto.setWordKey( rs.getString("wordkey"));
                wdto.setWordValue( rs.getString("wordvalue") );
                list.add(wdto);
            }
        } catch (SQLException e) { e.printStackTrace();
        } finally {  	dbman.close(con, pstmt, rs);      }
        return list;
    }
}
