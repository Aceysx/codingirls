package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.service.JobsService;
import club.codingirls.util.PageUtil;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.mockito.Mockito.when;


public class RegisterControllerTest {
    @Mock
    private JobsService jobsService;

    @InjectMocks
    private JobsController jobsController;

    @Before
    public void setup() {
        jobsController = new JobsController();
        jobsController.setJobsService(jobsService);
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void should_return_jobs() throws Exception {
        PageUtil pageUtil = new PageUtil();
        SearchDto searchDto = new SearchDto();
        List<Jobs> jobs = new ArrayList<>();
        Jobs job = new Jobs();
        jobs.add(job);

        when(jobsService.queryJobsPage(searchDto, pageUtil)).thenReturn(jobs);
        Result result = jobsController.jobs(searchDto, pageUtil);
        Map<String, Object> data = (Map<String, Object>) result.getData();

        Assert.assertTrue(result.isResult());
        Assert.assertEquals(jobs, data.get("jobs"));
    }
}