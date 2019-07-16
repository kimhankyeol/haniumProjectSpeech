package poly.service.impl;

import config.Mapper;
import poly.dto.TestCommentDTO;

@Mapper("TestCommentMapper")
public interface TestCommentMapper {

	int insertTestComment(TestCommentDTO tcDTO) throws Exception;

}
