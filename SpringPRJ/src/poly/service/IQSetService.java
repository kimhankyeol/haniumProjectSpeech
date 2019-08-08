package poly.service;

import java.util.List;

import poly.dto.QSetDTO;

public interface IQSetService {

	int insertQSet(QSetDTO qDTO) throws Exception;

	List<QSetDTO> getQSetList() throws Exception;

}
