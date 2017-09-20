package club.codingirls.service;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.util.PageUtil;

import java.util.List;
import java.util.Map;

public interface JobsService {

    List<Map<String,Object>> queryJobsPage(SearchDto searchDto, PageUtil pageUtil);

    Map<String,Object> load()throws Exception;
}
