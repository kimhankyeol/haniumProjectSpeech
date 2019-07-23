package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.ResFeedbackDTO;

@Mapper("ResFeedbackMapper")
public interface ResFeedbackMapper {

	List<ResFeedbackDTO> getResList() throws Exception;

	ResFeedbackDTO getResDetail(String feedbackNo) throws Exception;

}
