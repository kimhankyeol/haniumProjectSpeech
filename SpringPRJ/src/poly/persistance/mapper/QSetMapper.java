package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.QSetDTO;

@Mapper("QSetMapper")
public interface QSetMapper {

	int insertQSet(QSetDTO qDTO) throws Exception;

	List<QSetDTO> getQSetList() throws Exception;

}
