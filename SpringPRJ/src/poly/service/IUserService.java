package poly.service;

import poly.dto.UserDTO;

public interface IUserService {

	int userRegProc(UserDTO uDTO) throws Exception;

	UserDTO idCheck(String id) throws Exception;

	UserDTO getLogin(UserDTO uDTO) throws Exception;

	UserDTO findID(String email) throws Exception;

	UserDTO emailCheck(String email) throws Exception;

	UserDTO findPw(String id) throws Exception;

}