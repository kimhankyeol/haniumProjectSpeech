package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.FeedbackCommentDTO;
import poly.persistance.mapper.FeedbackCommentMapper;
import poly.service.IFeedbackCommentService;

@Service("FeedbackCommentService")
public class FeedbackCommentService implements IFeedbackCommentService {
	
	@Resource(name="FeedbackCommentMapper")
	private FeedbackCommentMapper feedbackCommentMapper;


}
