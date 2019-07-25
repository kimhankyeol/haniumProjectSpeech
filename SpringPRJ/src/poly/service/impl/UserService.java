package poly.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.UserDTO;
import poly.persistance.mapper.UserMapper;
import poly.service.IUserService;

@Service("UserService")
public class UserService implements IUserService{

	@Resource(name="UserMapper")
	private UserMapper userMapper;
	
	@Override
	public int userRegProc(UserDTO uDTO) throws Exception {
		return userMapper.userRegProc(uDTO);
	}

	@Override
	public UserDTO idCheck(String id) throws Exception {
		return userMapper.idCheck(id);
	}

	@Override
	public UserDTO getLogin(UserDTO uDTO) throws Exception {
		return userMapper.getLogin(uDTO);
	}

	@Override
	public UserDTO findID(String email) throws Exception {
		return userMapper.findID(email);
	}

	@Override
	public UserDTO emailCheck(String email) throws Exception {
		return userMapper.emailCheck(email);
	}

	@Override
	public UserDTO findPw(String id) throws Exception {
		return userMapper.findPw(id);
	}


}