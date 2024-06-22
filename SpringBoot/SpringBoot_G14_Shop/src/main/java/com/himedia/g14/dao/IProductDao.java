package com.himedia.g14.dao;

import com.himedia.g14.dto.ProductVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IProductDao {
    public List<ProductVO> getBestList();
    public List<ProductVO> getNewList();

    List<ProductVO> getKindList(String kind);

    void getProductDetail(int pseq);

    Object getProduct(int pseq);
}
