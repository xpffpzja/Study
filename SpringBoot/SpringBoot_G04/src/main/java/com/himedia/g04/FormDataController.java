package com.himedia.g04;


import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormDataController {

    @GetMapping("/")
    public String root() throws Exception{
        return "testForm";
    }

    @GetMapping("/test1")
    public String test1(HttpServletRequest request, Model model) throws Exception{

        String id = request.getParameter("id");
        String name = request.getParameter("name");

        model.addAttribute("id", id);
        model.addAttribute("name", name);

        return "test1";
    }


    //request를 이용하지 않고 파라미터를 전달받을 예정. 위와 같은 효과.
    @GetMapping("/test2")
    public String test2(@RequestParam("id") String id,
                        @RequestParam("name") String name,
                        @RequestParam("age") int age,
                        Model model) throws Exception{

    // ReqeustParam 사용 특성
    // 1. 정수형 자료를 정수형 변수에 Integer.parseInt 없이 바로 저장 가능.
    // 2. 이때, 전달되는 자료의 형태를 반드시 동일해야 에러 없음.
    // 3. 해당 전달값이 없으면(Null) 에러가 발생.
    // 4. 이를 방지하기 위해 @RequestParam(value="id", required=false) String id 라고 쓰기도 함.

        model.addAttribute("id", id);
        model.addAttribute("name", name);
        model.addAttribute("age", age);

        return "test2";
    }

    //@ModelAttribute("mdto") >> 시작과 동시에 받고 전달.
    @GetMapping("/test3")
    public String test3(@ModelAttribute("mdto") MemberDto memberdto, Model model){
        System.out.println(memberdto.getId());
        System.out.println(memberdto.getName());
        System.out.println(memberdto.getAge());
        System.out.println("=====================");

        //model.addAttribute("mdto", memberdto);
        return "test3";
    }


    // PathVariable
    @GetMapping("/test4/{studentId}/{username}/{age}")
    public String test(
            @PathVariable("studentId") String studentId,
            @PathVariable("username") String username,
            @PathVariable("age") int age,
            Model model
    ){
        model.addAttribute("id", studentId);
        model.addAttribute("name", username);
        model.addAttribute("age", age);

        return "test4";
    }
}
