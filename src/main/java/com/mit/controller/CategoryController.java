package com.mit.controller;

import com.mit.model.Category;
import com.mit.repositories.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path = "categories")
public class CategoryController {
    @Autowired
    private CategoryRepository categoryRepository;
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getAllCategories(ModelMap model){
//        model.addAttribute("name","Nguyen Mai");
//        System.out.println("Dang chay categories");
        Iterable<Category> categories = categoryRepository.findAll();
        model.addAttribute("categories",categories);
        return "category";
    }
}
