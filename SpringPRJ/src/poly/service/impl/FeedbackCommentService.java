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

	@Override
	public void commentReg(FeedbackCommentDTO fcDTO) throws Exception {
		feedbackCommentMapper.commentReg(fcDTO);
	}

	@Override
	public List<FeedbackCommentDTO> fcList(String feedbackNo) throws Exception {
		return feedbackCommentMapper.fcList(feedbackNo);
	}

	@Override
	public int commentEdit(FeedbackCommentDTO fcDTO) throws Exception {
		return feedbackCommentMapper.commentEdit(fcDTO);
	}

	@Override
	public int commentDel(String commentNo) throws Exception {
		return feedbackCommentMapper.commentDel(commentNo);
	}


}
