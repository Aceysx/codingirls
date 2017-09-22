package club.codingirls.service;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.entity.User;
import club.codingirls.util.PageUtil;

import java.util.List;
import java.util.Map;

public interface JobsService {

    List<Map<String,Object>> queryJobsPage(SearchDto searchDto, PageUtil pageUtil);

    Map<String,Object> load()throws Exception;

    int post(Jobs jobs, User user)throws Exception;

    Map<String,Object> queryJobsById(String id)throws Exception;

    List<Map<String,Object>> queryOwnJobsPage(SearchDto searchDto, PageUtil pageUtil, User user)throws Exception;

    void editJob(Jobs jobs)throws Exception;
}
