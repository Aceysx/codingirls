package club.codingirls.service;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.util.PageUtil;

import java.util.List;
import java.util.Map;

public interface JobsService {

    List<Jobs> queryJobsPage(SearchDto searchDto, PageUtil pageUtil);
}
