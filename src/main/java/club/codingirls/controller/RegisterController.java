package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.entity.User;
import club.codingirls.service.JobsService;
import club.codingirls.util.Constant;
import club.codingirls.util.PageUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("register")
public class RegisterController {

    @RequestMapping("")
    public Result register(User user) {
        Map<String, Object> result = new HashMap<>();
        try {

            return Result.success(result, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {

            return Result.failure(null, Constant.SEARCH_FAILURE);
        }
    }


}
