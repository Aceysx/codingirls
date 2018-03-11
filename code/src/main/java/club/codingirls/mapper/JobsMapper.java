package club.codingirls.mapper;

import club.codingirls.entity.Jobs;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface JobsMapper {

    List<Map<String,Object>> queryJobsBySearchDto(Map<String, Object> data);

    Long queryJobsCount(Map<String, Object> data );

    int insert(Jobs job);

    List<Map<String,String>> queryAllCategory();

    List<Map<String,String>> queryAllType();

    List<Map<String,String>> queryAllTag();

    List<Map<String,String>> queryTagsByJobsId(String id);

    void insertTags(@Param("tags") List<String> tags, @Param("id") int id);

    void tagAddCount(@Param("tags") List<String> tags);

    Map<String,Object> queryJobsById(String id);

    Long queryOwnJobsCount(Map<String, Object> data);

    List<Map<String,Object>> queryOwnJobsBySearchDto(Map<String, Object> data);

    void updatePublicState(Jobs job);

    void update(Jobs jobs);

    List<String> queryTagIdsByJobsId(String id);

    void tagReduceCount(@Param("tags")List<String> shouldDeleteTags);

    void deleteTags(@Param("tags") List<String> shouldDeleteTags, @Param("id") int id);
}
