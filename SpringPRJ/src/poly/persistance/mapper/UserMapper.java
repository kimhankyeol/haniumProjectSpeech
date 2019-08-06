package poly.persistance.mapper;

import config.Mapper;
import poly.dto.UserDTO;

@Mapper("UserMapper")
public interface UserMapper {

	int userRegProc(UserDTO uDTO) throws Exception;

	UserDTO idCheck(String id) throws Exception;

	UserDTO getLogin(UserDTO uDTO) throws Exception;

	UserDTO findID(String email) throws Exception;

	UserDTO emailCheck(String email) throws Exception;

	UserDTO findPw(String id) throws Exception;

}