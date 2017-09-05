package club.codingirls.mapper;

import club.codingirls.dto.SearchDto;
import club.codingirls.entity.Jobs;
import club.codingirls.util.PageUtil;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface JobsMapper {

    List<Jobs> queryJobsBySearchDto(@Param("pageUtil") PageUtil pageUtil,@Param("searchDto") SearchDto searchDto);
}
