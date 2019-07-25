package poly.persistance.mapper;

import config.Mapper;
import poly.dto.FeedbackCommentDTO;

@Mapper("FeedbackCommentMapper")
public interface FeedbackCommentMapper {

	int commentReg(FeedbackCommentDTO fcDTO) throws Exception;

	int commentEdit(FeedbackCommentDTO fcDTO) throws Exception;

	int commentDel(String commentNo) throws Exception;

	FeedbackCommentDTO getDetail(String commentNo) throws Exception;

}
