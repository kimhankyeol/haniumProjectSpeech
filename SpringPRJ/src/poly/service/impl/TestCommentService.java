package poly.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.TestCommentDTO;
import poly.service.ITestCommentService;

@Service("TestCommentService")
public class TestCommentService implements ITestCommentService {
	
	@Resource(name="TestCommentMapper")
	private TestCommentMapper testCommentMapper;

	@Override
	public int insertTestComment(TestCommentDTO tcDTO) throws Exception {
		return testCommentMapper.insertTestComment(tcDTO);
	}
}
