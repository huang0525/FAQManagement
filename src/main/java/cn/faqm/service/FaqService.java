package cn.faqm.service;

import cn.faqm.entity.Classes;
import cn.faqm.entity.Faqs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FaqService {

    List<Classes> queryAllFaqsPro();


    List<Faqs> queryAllFaqsList(@Param("id") Integer id);

    int addFqa(Faqs faqs);
}
