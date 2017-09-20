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
    public List<Map<String,Object>> queryJobsPage(SearchDto searchDto, PageUtil page) {
        Map<String, Object> data = new HashMap<>();
        data.put("start", (page.getCurrentIndex() - 1) * page.getPageSize());
        data.put("pageSize", page.getPageSize());
        data.put("categoryId", searchDto.getCategoryId());
        data.put("tagId", searchDto.getTagId());
        data.put("typeId", searchDto.getTypeId());
        data.put("content", "%"+searchDto.getSearchContent()+"%");
        page.setTotalPage(jobsMapper.queryJobsCount(data));

        List<Map<String, Object>> jobs = jobsMapper.queryJobsBySearchDto(data);
        for (Map<String, Object> job : jobs) {
            job.put("tags",jobsMapper.queryTagsByJobsId(job.get("id").toString()));
        }

        return jobs;
    }

    @Override
    public Map<String, Object> load() throws Exception {
        Map<String, Object> result = new HashMap<>();
        List<Map<String, String>> categories = jobsMapper.queryAllCategory();
        List<Map<String, String>> types = jobsMapper.queryAllType();
        List<Map<String, String>> tags = jobsMapper.queryAllTag();

        result.put("categories", categories);
        result.put("types", types);
        result.put("tags", tags);

        return result;
    }

    public void setJobsMapper(JobsMapper jobsMapper) {
        this.jobsMapper = jobsMapper;
    }
}
