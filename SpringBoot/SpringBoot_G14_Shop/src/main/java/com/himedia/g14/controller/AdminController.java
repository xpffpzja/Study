package com.himedia.g14.controller;

import com.himedia.g14.dto.AdminVO;
import com.himedia.g14.dto.ProductVO;
import com.himedia.g14.service.AdminService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    AdminService as;

    @GetMapping("/admin")
    public String admin() {
        return "admin/adminLoginForm";
    }

    @PostMapping("/adminlogin")
    public String adminLogin(@ModelAttribute("dto") AdminVO adminvo, BindingResult result, Model model,
                             HttpServletRequest request) {
        String url = "admin/adminLogin";
        if (result.getFieldError("adminid") != null)
            model.addAttribute("message", "아이디를 입력하세요");
        else if (result.getFieldError("pwd") != null)
            model.addAttribute("message", "패스워드를 입력하세요");
        else {
            AdminVO avo = as.getAdmin(adminvo.getAdminid());
            if (avo == null)
                model.addAttribute("message", "아이디 비번을 확인하세요");
            else if (!avo.getPwd().equals(adminvo.getPwd()))
                model.addAttribute("message", "아이디 비번을 확인하세요");
            else if (avo.getPwd().equals(adminvo.getPwd())) {
                HttpSession session = request.getSession();
                session.setAttribute("loginAdmin", avo);
                url = "redirect:/adminProductList";
            }
        }
        return url;
    }

    @GetMapping("/adminProductList")
    public ModelAndView productList(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        if (session.getAttribute("loginAdmin") == null)
            mav.setViewName("admin/adminLoginForm");
        else {
            HashMap<String, Object> result = as.getAdminProductList(request);
            List<ProductVO> list = (List<ProductVO>) result.get("productList");
            System.out.println(list.size());
            mav.addObject("productList", result.get("productList"));
            mav.addObject("paging", result.get("paging"));
            mav.addObject("key", result.get("key"));
            mav.setViewName("admin/product/productList");
        }
        return mav;
    }

    @GetMapping("/adminProductWriteForm")
    public String product_write_form(HttpServletRequest request, Model model) {
        String kindList[] = { "Heels", "Boots", "Sandals", "Snickers", "Slipers", "Sale" };
        model.addAttribute("kindList", kindList);
        return "admin/product/productWriteForm";
    }

    @Autowired
    ServletContext context;

    @PostMapping("/fileup")
    @ResponseBody // 자신을 호출하는 곳으로 "리턴되는 데이터"를 갖고 이동하여 페이지에 표시하라는 뜻
    public HashMap<String, Object> fileup(
            @RequestParam("fileimage") MultipartFile file,
            HttpServletRequest request, Model model) {

        String path = context.getRealPath("/product_images");
        Calendar today = Calendar.getInstance();
        long t = today.getTimeInMillis();

        String filename = file.getOriginalFilename();
        String fn1 = filename.substring(0, filename.indexOf(".")); // 파일이름과 확장장 분리
        String fn2 = filename.substring(filename.indexOf("."));
        String uploadPath = path + "/" + fn1 + t + fn2;
        System.out.println("파일 저장 경로 = " + uploadPath);
        HashMap<String, Object> result = new HashMap<String, Object>();
        try {
            file.transferTo(new File(uploadPath)); // 파일이 업로드 및 저장되는 명령
            result.put("STATUS", 1); // 파일 전송 상태
            result.put("IMAGE", filename);
            result.put("SAVEFILENAME", fn1 + t + fn2);
        } catch (IllegalStateException e) {
            e.printStackTrace();
            result.put("STATUS", 0);
        } catch (IOException e) {
            e.printStackTrace();
            result.put("STATUS", 0);
        }
        return result;

    }

    @PostMapping("/adminProductWrite")
    public String adminProductWrite(@ModelAttribute("dto") @Valid ProductVO productvo,
                                    BindingResult result, Model model) {
        String url = "admin/product/productWriteForm";
        String kindList[] = { "Heels", "Boots", "Sandals", "Snickers", "Slipers", "Sale" };
        model.addAttribute("kindList", kindList);
        if (result.getFieldError("name") != null)
            model.addAttribute("message", "상품명을 입력하세요");
        else if (result.getFieldError("kind") != null)
            model.addAttribute("message", "상품종류를 선택하세요");
        else if (productvo.getPrice1() == null || productvo.getPrice1() <= 0)
            model.addAttribute("message", "원가를 입력하세요");
        else if (productvo.getPrice2() == null || productvo.getPrice2() <= 0)
            model.addAttribute("message", "판매가를 입력하세요");
        else if (productvo.getPrice3() == null || productvo.getPrice3() <= 0)
            model.addAttribute("message", "원가가 판매가보다 크거가 같을수 없습니다");
        else if (result.getFieldError("content") != null)
            model.addAttribute("message", "상품설명을 입력하세요");
        else if (result.getFieldError("image") != null)
            model.addAttribute("message", "이미지를 선택하세요");
        else if (result.getFieldError("savefilename") != null)
            model.addAttribute("message", "이미지를 선택하세요");
        else {
            as.insertProduct(productvo);
            url = "redirect:/adminProductList";
        }
        return url;
    }

}
