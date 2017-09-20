package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.service.JobsService;
import club.codingirls.util.Constant;
import club.codingirls.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("jobs")
public class JobsController {
    @Resource
    private JobsService jobsService;

    @RequestMapping("")
    public Result jobs(SearchDto searchDto, PageUtil pageUtil) {
        Map<String, Object> result = new HashMap<>();
        try {
            List<Map<String,Object>> jobs = jobsService.queryJobsPage(searchDto, pageUtil);
            result.put("page", pageUtil);
            result.put("jobs", jobs);

            return Result.success(result, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure(null, Constant.SEARCH_FAILURE);
        }
    }

    @RequestMapping("load")
    @ResponseBody
    public Result load() {
        try {
            Map<String,Object> result = jobsService.load();

            return Result.success(result, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure(null, Constant.SEARCH_FAILURE);
        }
    }


    public void setJobsService(JobsService jobsService) {
        this.jobsService = jobsService;
    }
}
