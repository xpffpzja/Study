package com.himedia.g11.springboot_g12.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ITransactionDao1 {

    void insertRecord(String id, int amount);
}
