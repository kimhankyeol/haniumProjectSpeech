package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.UserDTO;
import poly.service.IUserService;

@Controller
public class UserController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "UserService")
	private IUserService userService;

	@RequestMapping(value = "UserReg")
	public String UserReg() throws Exception {
		log.info("accessed UserReg");

		return "/User/UserReg";
	}
	


	@RequestMapping(value = "UserRegProc")
	public String UserRegProc(HttpServletRequest request, HttpServletResponse response, ModelMap model)
			throws Exception {
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String interest = request.getParameter("interest");
		String regDate = request.getParameter("regDate");
		String regNo = request.getParameter("regNo");
		String updDate = request.getParameter("updDate");
		String updNo = request.getParameter("updNo");
		String passwd = request.getParameter("passwd");

		// set interest to null if empty
		if (interest.isEmpty())
			interest = null;

		UserDTO uDTO = new UserDTO();
		uDTO.setEmail(email);
		uDTO.setId(id);
		uDTO.setInterest(interest);
		uDTO.setPasswd(passwd);
		uDTO.setRegDate(regDate);
		uDTO.setRegNo(regNo);
		uDTO.setUpdDate(updDate);
		uDTO.setUpdNo(updNo);

		int result = 0;

		result = userService.userRegProc(uDTO);
		log.info("결과값 : " + result);

		if (result > 0) {
			model.addAttribute("url", "/index.do");
			model.addAttribute("msg", "가입완료");
		} else {
			model.addAttribute("url", "/user/UserReg.do");
			model.addAttribute("msg", "가입실패");
		}

		return "/redirect";
	}
	
	@ResponseBody
	@RequestMapping(value="/idCheck.do", method = RequestMethod.POST)
	public int idCheck(HttpServletRequest request) throws Exception {
		log.info("idCheck");

		String id = request.getParameter("id");
		log.info(id);
		UserDTO uDTO = userService.idCheck(id);

		int result = 0;

		if (uDTO != null) {
			result = 1;
		}
		return result;
	}
	
	@RequestMapping(value="UserLogin", method = RequestMethod.POST)
	public String login(ModelMap model, HttpServletRequest request, HttpSession session) throws Exception{
		log.info("UserLogin");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		UserDTO uDTO = new UserDTO();
		uDTO.setId(id);
		uDTO.setPasswd(passwd);
		
		uDTO = userService.getLogin(uDTO);
		
		if(uDTO==null) {
			model.addAttribute("url", "/index.do");
			model.addAttribute("msg", "로그인에 실패하였습니다.");
		}else {
			model.addAttribute("url", "/index.do");
			model.addAttribute("msg", "로그인 성공");
			session.setAttribute("id", uDTO.getId());
			session.setAttribute("userNo", uDTO.getUserNo());
			
		}
		
		return "redirect";
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpSession session, ModelMap model) throws Exception{
		
		session.invalidate();
		model.addAttribute("msg", "로그아웃했습니다.");
		model.addAttribute("url", "/index.do");
		return "/redirect";
	}

}