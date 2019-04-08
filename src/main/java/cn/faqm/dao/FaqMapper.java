package cn.faqm.dao;

import cn.faqm.entity.Classes;
import cn.faqm.entity.Faqs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FaqMapper {
    /**
     * 查询所有
     * @return
     */
    List<Classes> queryAllFaqsPro();


    List<Faqs> queryAllFaqsList(@Param("id") Integer id);

    int addFaq(Faqs faqs);


}
