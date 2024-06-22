package com.himedia.g07;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class ValidController {

    @GetMapping("/")
    public String root() throws Exception{
        return "StartPage";
    }

    @GetMapping("/create")
    public String create(
            @ModelAttribute("dto") @Valid ContentDto contentdto,
            BindingResult result,
            Model model
    ) throws Exception{

        String page = "result";
        if(result.hasErrors()) {
            page ="StartPage";
            if(result.getFieldError("writer") != null) {
                //model.addAttribute("message", "writer가 비었습니다.");
                //String msg = result.getFieldError("writer").getDefaultMessage();
                model.addAttribute("message", result.getFieldError("writer").getDefaultMessage());
            }else if(result.getFieldError("content") != null) {
                model.addAttribute("message", result.getFieldError("content")
                        .getDefaultMessage());
            }

        }
        return page;
    }
}
