package com.example.demo.MyController;

import com.example.demo.dao.UserDao;
import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {

    @Autowired
    UserDao userDao;

    @GetMapping("/")
    public String goIndex(){
        return "index";
    }
    @GetMapping("/home")
    public String goHome(){
        return "home";
    }
    @GetMapping("/contact")
    public String goContact(){
        return "contact";
    }
    @GetMapping("/about")
    public String goAbout(){
        return "about";
    }
    @GetMapping("/bookmark")
    public String goBookmark(){
        return "bookmark";
    }
    @GetMapping("/signUp")
    public String goSignUp(Model model){

        User user = new User();
        model.addAttribute("userInfo",user);
        System.out.println("Sign up page visited..");
        return "signUp";
    }
//    @GetMapping("/signUp")             //Add new object or edit an object
//    public String addUser(@RequestParam(value = "userId",required = false) Integer userId, Model model){
//        User user = new User();
//
//        if(userId != null){
//            user = userDao.findById(userId).get();
//        }
//
//        model.addAttribute("user",user);
//        System.out.println("AddUser get  method visited...");
//        return "signUp";
//    }

    @PostMapping("/signUp")            //Save an object
    public String saveUser(@ModelAttribute("user") User user){
        userDao.save(user);
        System.out.println("AddUser post  method visited...");
        return "index";
    }
}
