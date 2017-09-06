package club.codingirls.mapper;


import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.util.PageUtil;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration()
@ContextConfiguration("file:src/main/resources/spring/*.xml")
@Transactional
public class JobsMapperTest {
    @Autowired
    private JobsMapper jobsMapper;
    List<Jobs> jobs = new ArrayList<>();

    @Before
    public void setUp() {
        for (int i = 0; i < 50; ++i) {
            Jobs job = new Jobs();
            job.setTitle("aaa" + i);
            job.setCompany("aaa" + i);
            job.setDescription("aaa" + i);
            job.setCategoryId(i);
            job.setJobTypeId(i);
            jobs.add(job);
        }
    }

    @Test
    public void should_return_jobs_page_by_categoryId_and_typeId_and_searchContent() {
        for (Jobs job : jobs) {
            jobsMapper.insert(job);
        }

        Map<String, Object> data = new HashMap<>();
        data.put("start", 1);
        data.put("pageSize", 10);
        data.put("categoryId", "1");
        data.put("typeId", "1");
        data.put("content", "%aaa%");

        List<Map<String,String>> actual = jobsMapper.queryJobsBySearchDto(data);

        Assert.assertEquals(10, actual.size());
    }
}
