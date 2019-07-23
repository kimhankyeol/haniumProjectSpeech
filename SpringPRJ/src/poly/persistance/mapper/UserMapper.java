package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.UserDTO;

@Mapper("UserMapper")
public interface UserMapper {

	int userRegProc(UserDTO uDTO) throws Exception;

	UserDTO idCheck(String id) throws Exception;

	UserDTO getLogin(UserDTO uDTO) throws Exception;

}