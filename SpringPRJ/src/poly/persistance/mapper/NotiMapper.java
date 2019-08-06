package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.NotiDTO;

@Mapper("NotiMapper")
public interface NotiMapper {

	int insertNotiInfo(NotiDTO nDTO) throws Exception;

	List<NotiDTO> getNotiList() throws Exception;

	NotiDTO getNotiDetail(String seq) throws Exception;

	int updateNoti(NotiDTO nDTO) throws Exception;

	int deleteNoti(String seq) throws Exception;

}
