package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.entity.User;
import club.codingirls.mapper.RegisterMapper;
import club.codingirls.service.JobsService;
import club.codingirls.service.RegisterService;
import club.codingirls.util.Constant;
import club.codingirls.util.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class RegisterController {
    @Resource
    private RegisterService registerService;
    @Resource
    private RegisterMapper registerMapper;

    @RequestMapping("signUp")
    @ResponseBody
    public Result register(User user) {
        try {
            if (registerService.emailExist(user)) {
                return Result.failure(null, Constant.ACCOUNT_EXIST);
            }
            registerService.register(user);

            return Result.success(null, Constant.REGISTER_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure(null, Constant.REGISTER_FAILURE);
        }
    }

    @RequestMapping("activation")
    public String activation(String code, HttpServletRequest request) {
        boolean result = false;
        try {
            registerMapper.activationCode(code);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("result", result);

        return "index";
    }
}
