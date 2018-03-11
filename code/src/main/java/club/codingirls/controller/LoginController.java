package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.entity.User;
import club.codingirls.mapper.LoginMapper;
import club.codingirls.util.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Resource
    private LoginMapper loginMapper;

    @RequestMapping("singIn")
    @ResponseBody
    public Result singIn(User user, HttpSession session) {
        try {
            user = loginMapper.login(user);
            if (user != null) {
                if (user.getAvailable() == 0) {
                    return Result.failure(null, Constant.ACCOUNT_NOT_ACTIVE);
                }
                session.setAttribute("user", user);
                return Result.success(null, Constant.SEARCH_SUCCESS);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return Result.failure(null, Constant.ACCOUNT_OR_PWD_ERROR);
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");

        return "index";
    }
}
