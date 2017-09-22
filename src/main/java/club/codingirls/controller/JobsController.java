package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.entity.User;
import club.codingirls.mapper.JobsMapper;
import club.codingirls.service.JobsService;
import club.codingirls.util.Constant;
import club.codingirls.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("jobs")
public class JobsController {
    @Resource
    private JobsService jobsService;
    @Resource
    private JobsMapper jobsMapper;

    @RequestMapping("")
    @ResponseBody
    public Result jobs(SearchDto searchDto, PageUtil pageUtil) {
        Map<String, Object> result = new HashMap<>();
        try {
            List<Map<String, Object>> jobs = jobsService.queryJobsPage(searchDto, pageUtil);
            result.put("page", pageUtil);
            result.put("jobs", jobs);

            return Result.success(result, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure(null, Constant.SEARCH_FAILURE);
        }
    }

    @RequestMapping("ownJobs")
    @ResponseBody
    public Result ownJobs(SearchDto searchDto, PageUtil pageUtil, HttpSession session) {
        Map<String, Object> result = new HashMap<>();
        try {
            User user = (User) session.getAttribute("user");
            List<Map<String, Object>> jobs = jobsService.queryOwnJobsPage(searchDto, pageUtil, user);
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
            Map<String, Object> result = jobsService.load();

            return Result.success(result, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure(null, Constant.SEARCH_FAILURE);
        }
    }


    @RequestMapping("changePublicState")
    @ResponseBody
    public Result changePublicState(Jobs job) {
        try {
            jobsMapper.updatePublicState(job);
            return Result.success();
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure();
        }
    }


    @RequestMapping("postJob")
    @ResponseBody
    public Result postJob(Jobs jobs, HttpSession session) {
        try {
            User user = (User) session.getAttribute("user");
            int id = jobsService.post(jobs, user);
            return Result.success(id);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure();
        }
    }

    @RequestMapping("editJob")
    @ResponseBody
    public Result editJob(Jobs jobs) {
        try {
            jobsService.editJob(jobs);
            return Result.success(jobs.getId());
        } catch (Exception e) {
            e.printStackTrace();
            return Result.failure();
        }
    }

    @RequestMapping("detail/{id}")
    public String detail(@PathVariable("id") String id, HttpServletRequest request) {
        try {
            Map<String, Object> job = jobsService.queryJobsById(id);
            request.setAttribute("job", job);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "jobDetail";
    }

    @RequestMapping("edit/{id}")
    public String edit(@PathVariable("id") String id, HttpServletRequest request) {
        try {
            Map<String, Object> job = jobsService.queryJobsById(id);
            request.setAttribute("job", job);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "edit";
    }
}
