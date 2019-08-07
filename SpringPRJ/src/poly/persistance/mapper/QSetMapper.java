package poly.persistance.mapper;

import config.Mapper;
import poly.dto.QSetDTO;

@Mapper("QSetMapper")
public interface QSetMapper {

	int insertQSet(QSetDTO qDTO) throws Exception;

}
