package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.QSetDTO;
import poly.persistance.mapper.QSetMapper;
import poly.service.IQSetService;

@Service("QSetService")
public class QSetService implements IQSetService {
	
	@Resource(name="QSetMapper")
	private QSetMapper qSetMapper;

	@Override
	public int insertQSet(QSetDTO qDTO) throws Exception {
		return qSetMapper.insertQSet(qDTO);
	}

	@Override
	public List<QSetDTO> getQSetList() throws Exception {
		return qSetMapper.getQSetList();
	}
	

}
