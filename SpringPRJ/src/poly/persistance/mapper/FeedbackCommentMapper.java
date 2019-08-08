package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.FeedbackCommentDTO;

@Mapper("FeedbackCommentMapper")
public interface FeedbackCommentMapper {

	List<FeedbackCommentDTO> fcList(String feedbackNo) throws Exception;
	
	void commentReg(FeedbackCommentDTO fcDTO) throws Exception;

	void commentDel(String commentNo) throws Exception;

	void commentEdit(FeedbackCommentDTO fcDTO) throws Exception;

}
