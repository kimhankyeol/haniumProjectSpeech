package poly.service;

import java.util.List;

import poly.dto.NotiDTO;

public interface INotiService {

	int insertNotiInfo(NotiDTO nDTO) throws Exception;

	List<NotiDTO> getNotiList() throws Exception;

	NotiDTO getNotiDetail(String seq) throws Exception;

	int updateNoti(NotiDTO nDTO) throws Exception;

	int deleteNoti(String seq) throws Exception;

}
