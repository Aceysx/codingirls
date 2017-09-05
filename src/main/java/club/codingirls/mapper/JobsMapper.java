package club.codingirls.mapper;

import club.codingirls.entity.Jobs;

import java.util.List;
import java.util.Map;

public interface JobsMapper {

    List<Jobs> queryJobsBySearchDto(Map<String, Object> data);

    Long queryJobsCount();

    void insert(Jobs job);
}
