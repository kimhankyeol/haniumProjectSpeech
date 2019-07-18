package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.ResFeedbackDTO;
import poly.persistance.mapper.ResFeedbackMapper;
import poly.service.IResFeedbackService;

@Service("ResFeedbackService")
public class ResFeedbackService implements IResFeedbackService {

	@Resource(name="ResFeedbackMapper")
	private ResFeedbackMapper resFeedbackMapper;
	
	@Override
	public List<ResFeedbackDTO> getResList() throws Exception {
		return resFeedbackMapper.getResList();
	}

}
