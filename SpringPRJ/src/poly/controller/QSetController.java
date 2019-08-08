package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.QSetDTO;
import poly.service.IQSetService;

@Controller
public class QSetController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "QSetService")
	private IQSetService qSetService;
	
	// 짊문 세트 작성
	@RequestMapping(value="qset/CreateQSet")
	public String CreateQset() throws Exception{
		
		return "/qset/CreateQSet";
	}
	
	@RequestMapping(value="qset/SubmitQSet")
	public String SubmitQSet(HttpServletRequest request, HttpServletResponse response, ModelMap model, HttpSession session) throws Exception{
		String title = request.getParameter("qset_title");
		String desc = request.getParameter("qset_desc");
		String content = request.getParameter("content");
		String userNo = (String)session.getAttribute("userNo");
		log.info("title : " + title);
		log.info("desc : " + desc);
		log.info("content : " + content);
		log.info("userNo : " + userNo);
		
		QSetDTO qDTO = new QSetDTO();
		
		qDTO.setQset_title(title);
		qDTO.setQset_desc(desc);
		qDTO.setContent(content);
		qDTO.setRegno(userNo);
		
		int result = 0; 
		
		result = qSetService.insertQSet(qDTO);
		
		if (result > 0) {
			model.addAttribute("url", "/qset/QSetList.do");
			model.addAttribute("msg", "등록 성공");
		} else {
			model.addAttribute("url", "/qset/SubmitQSet.do");
			model.addAttribute("msg", "등록 실패");
		}
		
		return "/redirect";
	}
	
	//질문 세트 목록
	@RequestMapping(value="qset/QSetList")
	public String QSetList(HttpServletRequest request, HttpServletResponse response, ModelMap model, HttpSession session) throws Exception{
		List<QSetDTO> qList = new ArrayList<>();
		try {
			qList = qSetService.getQSetList();
		} catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("qList", qList);
		
		return "qset/QSetList";
	}
	
}
