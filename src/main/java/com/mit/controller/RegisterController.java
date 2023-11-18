package com.mit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping(path = "register")
public class RegisterController {
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String login(){
        return "input";
    }

    @RequestMapping(value = "/display",method = RequestMethod.POST)
    public String display(@RequestParam("firstname") String firstname,
                          @RequestParam("lastname") String lastname,
                          @RequestParam("password") String password,
                          @RequestParam("repassword") String repassword, ModelMap modelMap,
                          HttpServletResponse response){
        if(password.equals(repassword)){
            Cookie fname = new Cookie("firstname", firstname);
            Cookie lname = new Cookie("lastname", lastname);

            response.addCookie(fname);
            response.addCookie(lname);
            return "display";
        }else{
            modelMap.addAttribute("error","Password incorrect!!!");
            return "input";
        }
    }

}
