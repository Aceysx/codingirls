package club.codingirls.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Router {

    @RequestMapping("/index")
    public String index() {
        return "redirect:index";
    }

    @RequestMapping("/forgetPassword")
    public String forgetPassword() {
        return "forgetPassword";
    }

    @RequestMapping("/jobDetail")
    public String jobDetail() {
        return "jobDetail";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/modifyInfo")
    public String modifyInfo() {
        return "modifyInfo";
    }

    @RequestMapping("/myPost")
    public String myPost() {
        return "myPost";
    }

    @RequestMapping("/postJob")
    public String postJob() {
        return "postJob";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/main")
    public String main() {
        return "main";
    }

    @RequestMapping("/resendEmail")
    public String resendEmail() {
        return "resendEmail";
    }
}
