package cn.faqm.service.serviceImpl;

import cn.faqm.dao.FaqMapper;
import cn.faqm.entity.Classes;
import cn.faqm.entity.Faqs;
import cn.faqm.service.FaqService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("faqService")
public class FaqServiceImpl implements FaqService {

    @Resource
    private FaqMapper faqMapper;


    @Override
    public List<Classes> queryAllFaqsPro() {
        return faqMapper.queryAllFaqsPro();
    }

    @Override
    public List<Faqs> queryAllFaqsList(Integer id) {
        return faqMapper.queryAllFaqsList(id);
    }

    @Override
    public int addFqa(Faqs faqs) {
        return faqMapper.addFaq(faqs);
    }


}
