package club.codingirls.service.impl;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.mapper.JobsMapper;
import club.codingirls.service.JobsService;
import club.codingirls.util.PageUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class JobsServiceImpl implements JobsService {

    @Resource
    private JobsMapper jobsMapper;

    @Override
    public List<Jobs> queryJobsPage(SearchDto searchDto, PageUtil page) {
        Map<String, Object> data = new HashMap<>();
        data.put("start", (page.getCurrentIndex() - 1) * page.getPageSize());
        data.put("end", page.getPageSize());
        data.put("categoryId", searchDto.getCategoryId());
        data.put("typeId", searchDto.getTypeId());
        data.put("content", searchDto.getSearchContent());
        page.setTotalPage(jobsMapper.queryJobsCount());

        return jobsMapper.queryJobsBySearchDto(data);
    }


    public void setJobsMapper(JobsMapper jobsMapper) {
        this.jobsMapper = jobsMapper;
    }
}
