package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.service.IUserService;

@Controller
public class QSetController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "UserService")
	private IUserService userService;
	
	@RequestMapping(value="qset/CreateQSet")
	public String CreateQset() throws Exception{
		
		return "/qset/CreateQSet";
	}
	
	@RequestMapping(value="qset/SubmitQSet")
	public String SubmitQSet(HttpServletRequest request, HttpServletResponse response, ModelMap model, HttpSession session) throws Exception{
		String title = request.getParameter("qset_title");
		String desc = request.getParameter("qset_desc");
		String content = request.getParameter("content");
		log.info("title : " + title);
		log.info("desc : " + desc);
		log.info("content : " + content);
		return "/home";
	}
}
