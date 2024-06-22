package com.himedia.g12.service;

import com.himedia.g12.dao.ITransactionDao1;
import com.himedia.g12.dao.ITransactionDao2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Service
public class MyService {

    @Autowired
    ITransactionDao1 tdao1;

    @Autowired
    ITransactionDao2 tdao2;

    @Autowired
    PlatformTransactionManager ptm;

    @Autowired
    TransactionDefinition td;

    public int insertRecord(String id, int amount, int error) {
        // transaction1 테이블과 transaction2 테이블에
        // 각각 같은 내용으로 레코드를 insert하는 메서드 호출
        int result = 0;

        //트랙스액션의 시작
        TransactionStatus status = ptm.getTransaction(td);
        //끝은 commit 또는 rollback

        try {
            tdao1.insertRecord(id, amount);
            if(error != 0){
                int n = 10/0;
            }
            tdao2.insertRecord(id, amount);
            ptm.commit(status);
        }catch (Exception e){
            e.printStackTrace();
            result = 1;
            ptm.rollback(status);
        }
        return result;
    }
}
