package com.himedia.sp06.configuration;

import com.himedia.sp06.dao.WordDao;
import com.himedia.sp06.util.DbConInfo;
import com.himedia.sp06.util.Dbman;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class WordConfig {

    @Bean
    public DbConInfo dbconinfo(){
        DbConInfo dci = new DbConInfo();
        dci.setDriver("com.mysql.jdbc.Driver");
        dci.setUrl("jdbc:mysql://localhost:3306/scott");
        dci.setId("root");
        dci.setPw("adminuser");
        return dci;
    }

    @Bean
    public Dbman dbman( ){
        // Dbman db = new Dbman( dbconinfo() );
        Dbman db = new Dbman( );
        return db;
    }

    @Bean
    public WordDao worddao(){
        //WordDao wdao = new WordDao( dbman() );
        WordDao wdao = new WordDao( );
        return wdao;
    }

}
