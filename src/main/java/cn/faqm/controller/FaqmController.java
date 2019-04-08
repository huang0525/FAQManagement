package cn.faqm.controller;

import cn.faqm.entity.Classes;
import cn.faqm.entity.Faqs;
import cn.faqm.service.FaqService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/faqms")
public class FaqmController {
    @Resource
    private FaqService faqService;

    //通过常见问题查询详情信息
    @RequestMapping("/queryFqasById")
    public  String queryFqasById(@RequestParam(value="projectId",required = false) Integer id, Model model){
        List<Classes> FqaList = faqService.queryAllFaqsPro();
        List<Faqs> fqaslList = faqService.queryAllFaqsList(id);
        model.addAttribute("FqaList", FqaList);
        model.addAttribute("fqaslList", fqaslList);
        return "faqList";
    }

    @RequestMapping("/toAdd")
    public String toAdd(Model model) {
        List<Classes> classesList = faqService.queryAllFaqsPro();
        model.addAttribute("classesList", classesList);
        return "add";
    }

    @RequestMapping("/faqAdd")
    public String faqAdd(Faqs faqs) {
        int result = faqService.addFqa(faqs);
        if (result > 0) {
            return "redirect:/faqms/queryFqasById";
        } else {
            return "redirect:/faqms/toAdd";
        }
    }

}
