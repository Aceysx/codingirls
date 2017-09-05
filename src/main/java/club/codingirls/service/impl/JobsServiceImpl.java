package club.codingirls.service.impl;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.mapper.JobsMapper;
import club.codingirls.service.JobsService;
import club.codingirls.util.PageUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class JobsServiceImpl implements JobsService {

    @Resource
    private JobsMapper jobsMapper;

    @Override
    public List<Jobs> queryJobsPage(SearchDto searchDto, PageUtil pageUtil) {
        return null;
    }
}
