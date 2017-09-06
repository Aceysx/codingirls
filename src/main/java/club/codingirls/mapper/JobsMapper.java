package club.codingirls.mapper;

import club.codingirls.entity.Jobs;

import java.util.List;
import java.util.Map;

public interface JobsMapper {

    List<Jobs> queryJobsBySearchDto(Map<String, Object> data);

    Long queryJobsCount(Map<String, Object> data );

    void insert(Map<String,String> job);
}
