package poly.service;

import java.util.List;

import poly.dto.ResFeedbackDTO;

public interface IResFeedbackService {

	List<ResFeedbackDTO> getResList() throws Exception;

}
