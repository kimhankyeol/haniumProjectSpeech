package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.FeedbackCommentDTO;

@Mapper("FeedbackCommentMapper")
public interface FeedbackCommentMapper {

	void commentReg(FeedbackCommentDTO fcDTO) throws Exception;

	int commentEdit(FeedbackCommentDTO fcDTO) throws Exception;

	int commentDel(String commentNo) throws Exception;

	List<FeedbackCommentDTO> fcList(String feedbackNo) throws Exception;

}
