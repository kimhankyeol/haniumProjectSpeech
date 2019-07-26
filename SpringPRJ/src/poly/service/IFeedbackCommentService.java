package poly.service;

import java.util.List;

import poly.dto.FeedbackCommentDTO;

public interface IFeedbackCommentService {

	List<FeedbackCommentDTO> fcList(String feedbackNo) throws Exception;
	
	public void commentReg(FeedbackCommentDTO fcDTO) throws Exception;
	
	public int commentEdit(FeedbackCommentDTO fcDTO) throws Exception;
	
	public int commentDel(String commentNo) throws Exception;

}
