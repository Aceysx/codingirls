package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.service.JobsService;
import club.codingirls.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("jobs")
public class JobsController {
    @Autowired
    private JobsService jobsService;

    @RequestMapping("")
    public Result jobs() {
        try {
            return null;
        } catch (Exception e) {
            return Result.failure(null, Constant.SEARCH_FAILURE);
        }
    }
}
