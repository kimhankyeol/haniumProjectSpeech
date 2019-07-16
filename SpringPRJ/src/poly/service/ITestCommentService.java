package poly.service;

import poly.dto.TestCommentDTO;

public interface ITestCommentService {

	int insertTestComment(TestCommentDTO tcDTO) throws Exception;

}
