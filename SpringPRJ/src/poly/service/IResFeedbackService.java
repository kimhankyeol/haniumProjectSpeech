package poly.service;

import java.util.List;

import poly.dto.FeedbackCommentDTO;
import poly.dto.ResFeedbackDTO;

public interface IResFeedbackService {

	List<ResFeedbackDTO> getResList() throws Exception;

	ResFeedbackDTO getResDetail(String feedbackNo) throws Exception;
	
	

}
