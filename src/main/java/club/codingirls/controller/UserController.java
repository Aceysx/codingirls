package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.entity.Constant;
import club.codingirls.entity.User;
import club.codingirls.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/login")
    public String login() { return "login"; }

    @RequestMapping("/register")
    @ResponseBody
    public Result register(User user) {
        try {
            userService.register(user);

            return Result.success(null, Constant.REGISTER_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Result.failure(null, Constant.REGISTER_FAILURE);
    }
}
