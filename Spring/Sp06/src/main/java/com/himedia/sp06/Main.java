package com.himedia.sp06;

import com.himedia.sp06.configuration.WordConfig;
import com.himedia.sp06.dao.WordDao;
import com.himedia.sp06.dto.WordDto;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.ArrayList;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

        AnnotationConfigApplicationContext ctx
                = new AnnotationConfigApplicationContext(WordConfig.class);

        WordDao wdao = ctx.getBean("worddao", WordDao.class);

        ArrayList<WordDto> list = wdao.selectAll();
        for( WordDto wdto : list ) {
            System.out.print("key : " + wdto.getWordKey() + "\t|\t");
            System.out.print("value :" + wdto.getWordValue() + "\n");
        }
    }
}