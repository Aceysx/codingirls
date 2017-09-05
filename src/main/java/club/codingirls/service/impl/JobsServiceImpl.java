package club.codingirls.service.impl;

import club.codingirls.mapper.JobsMapper;
import club.codingirls.service.JobsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class JobsServiceImpl implements JobsService {

    @Resource
    private JobsMapper jobsMapper;

}
