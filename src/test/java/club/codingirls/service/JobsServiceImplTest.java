package club.codingirls.service;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.mapper.JobsMapper;
import club.codingirls.service.impl.JobsServiceImpl;
import club.codingirls.util.PageUtil;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.mockito.Mockito.when;

public class JobsServiceImplTest {
    @Mock
    private JobsMapper jobsMapper;

    @InjectMocks
    private JobsServiceImpl jobsService;

    @Before
    public void setup() {
        jobsService = new JobsServiceImpl();
        jobsService.setJobsMapper(jobsMapper);
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void should_return_jobs_page_by_categoryId_and_typeId_and_searchContent() {
        PageUtil pageUtil = new PageUtil();
        pageUtil.setPageSize(10);
        pageUtil.setCurrentIndex(1);

        SearchDto searchDto = new SearchDto();
        List<Jobs> jobs = new ArrayList<>();
        for (int i = 0; i < 100; ++i) {
            Jobs job = new Jobs();
            jobs.add(job);
        }
        Map<String, Object> data = new HashMap<>();
        data.put("start", (pageUtil.getCurrentIndex() - 1) * pageUtil.getPageSize());
        data.put("end", pageUtil.getPageSize());
        data.put("categoryId", searchDto.getCategoryId());
        data.put("typeId", searchDto.getTypeId());
        data.put("content", searchDto.getSearchContent());

        when(jobsMapper.queryJobsBySearchDto(data)).thenReturn(jobs);
        when(jobsMapper.queryJobsCount(data)).thenReturn(100L);

        List<Jobs> actual = jobsService.queryJobsPage(searchDto, pageUtil);

        Assert.assertEquals(jobs, actual);
        Assert.assertEquals("100", pageUtil.getTotalCount().toString());
        Assert.assertEquals("10", pageUtil.getTotalPage().toString());
    }

}
