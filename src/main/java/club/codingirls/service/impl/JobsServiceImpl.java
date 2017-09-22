package club.codingirls.service.impl;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.entity.User;
import club.codingirls.mapper.JobsMapper;
import club.codingirls.service.JobsService;
import club.codingirls.util.PageUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service
public class JobsServiceImpl implements JobsService {

    @Resource
    private JobsMapper jobsMapper;

    @Override
    public List<Map<String, Object>> queryJobsPage(SearchDto searchDto, PageUtil page) {
        Map<String, Object> data = new HashMap<>();
        data.put("start", (page.getCurrentIndex() - 1) * page.getPageSize());
        data.put("pageSize", page.getPageSize());
        data.put("categoryId", searchDto.getCategoryId());
        data.put("tagId", searchDto.getTagId());
        data.put("typeId", searchDto.getTypeId());
        data.put("content", "%" + searchDto.getSearchContent() + "%");
        page.setTotalPage(jobsMapper.queryJobsCount(data));

        List<Map<String, Object>> jobs = jobsMapper.queryJobsBySearchDto(data);
        for (Map<String, Object> job : jobs) {
            job.put("tags", jobsMapper.queryTagsByJobsId(job.get("id").toString()));
        }

        return jobs;
    }

    @Override
    public List<Map<String, Object>> queryOwnJobsPage(SearchDto searchDto, PageUtil page, User user) throws Exception {
        Map<String, Object> data = new HashMap<>();
        data.put("start", (page.getCurrentIndex() - 1) * page.getPageSize());
        data.put("pageSize", page.getPageSize());
        data.put("isPublic", searchDto.getIsPublic());
        data.put("userId", user.getId());
        page.setTotalPage(jobsMapper.queryOwnJobsCount(data));

        List<Map<String, Object>> jobs = jobsMapper.queryOwnJobsBySearchDto(data);
        for (Map<String, Object> job : jobs) {
            job.put("tags", jobsMapper.queryTagsByJobsId(job.get("id").toString()));
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

    @Override
    public int post(Jobs jobs, User user) throws Exception {
        jobs.setUserId(user.getId());
        jobsMapper.insert(jobs);
        List<String> tags = Arrays.asList(jobs.getTags().split(","));
        if (tags.size() > 0 && !"".equals(tags.get(0))) {
            jobsMapper.insertTags(tags, jobs.getId());
            jobsMapper.tagAddCount(tags);
        }
        return jobs.getId();
    }

    @Override
    public void editJob(Jobs jobs) throws Exception {
        List<String> oldIds = jobsMapper.queryTagIdsByJobsId(jobs.getId()+"");
        jobsMapper.update(jobs);
        List<String> newIds = Arrays.asList(jobs.getTags().split(","));
        List<String> shouldDeleteTags = shouldDeleteTags(oldIds,newIds);
        List<String> shouldInsertTags = shouldInsertTags(oldIds,newIds);
        if (shouldInsertTags.size() > 0 && !"".equals(shouldInsertTags.get(0))) {
            jobsMapper.insertTags(shouldInsertTags, jobs.getId());
            jobsMapper.tagAddCount(shouldInsertTags);
        }
        if (shouldDeleteTags.size() > 0 && !"".equals(shouldDeleteTags.get(0))) {
            jobsMapper.deleteTags(shouldDeleteTags, jobs.getId());
            jobsMapper.tagReduceCount(shouldDeleteTags);
        }
    }

    private List<String> shouldInsertTags(List<String> oldIds, List<String> newIds) {
        List<String> result = new ArrayList<>();

        for (String id : newIds) {
            if (!oldIds.contains(id)) {
                result.add(id);
            }
        }

        return result;
    }

    private List<String> shouldDeleteTags(List<String> oldIds, List<String> newIds) {
        List<String> result = new ArrayList<>();

        for (String id : oldIds) {
            if (!newIds.contains(id)) {
                result.add(id);
            }
        }

        return result;
    }

    @Override
    public Map<String, Object> queryJobsById(String id) throws Exception {
        Map<String,Object> job = jobsMapper.queryJobsById(id);
        job.put("tags", jobsMapper.queryTagsByJobsId(job.get("id").toString()));

        return job;
    }

    public void setJobsMapper(JobsMapper jobsMapper) {
        this.jobsMapper = jobsMapper;
    }
}
