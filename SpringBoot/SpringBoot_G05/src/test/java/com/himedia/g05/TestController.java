package com.himedia.g05;

import com.himedia.g05.dto.MemberDto;
import jakarta.servlet.http.HttpServletRequest;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@SpringBootTest
public class TestController {

    @Test
    public void testmethod(){

        // @AllargsConstructor 사용
        MemberDto mdto1 = new MemberDto("scott", "김하나");

        // @Builder 사용 - 확장성이 좋음.
        MemberDto mdto = MemberDto.builder()
                .id("scott")
                //.name("홍길동")
                .build();
        System.out.println(mdto.getId());
        System.out.println(mdto.getName());
        System.out.println(mdto);
    }

    @GetMapping("/test1")
    public String test1(@ModelAttribute("mdto") MemberDto memberdto, Model model) throws Exception{



        model.addAttribute("id : " + memberdto.getId() );
        model.addAttribute("name : " + memberdto.getName() );

        return "test1";
    }
}
