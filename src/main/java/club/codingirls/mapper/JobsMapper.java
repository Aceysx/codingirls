package club.codingirls.mapper;

import java.util.List;
import java.util.Map;

public interface JobsMapper {

    List<Map<String,Object>> queryJobsBySearchDto(Map<String, Object> data);

    Long queryJobsCount(Map<String, Object> data );

    void insert(Map<String,String> job);

    List<Map<String,String>> queryAllCategory();

    List<Map<String,String>> queryAllType();

    List<Map<String,String>> queryAllTag();

    List<Map<String,String>> queryTagsByJobsId(String id);
}
