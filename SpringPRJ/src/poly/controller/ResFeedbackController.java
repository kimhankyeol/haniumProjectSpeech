package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.ResFeedbackDTO;
import poly.service.IResFeedbackService;

@Controller
public class ResFeedbackController {
	
	public Logger log = Logger.getLogger(this.getClass().getName());
	
	@Resource(name = "ResFeedbackService")
	private IResFeedbackService resFeedbackService;
	
	
	//피드백 게시판 목록 불러오기
	@RequestMapping(value="resFeedback/resList")
	public String ResList(HttpServletRequest request, Model model) throws Exception {
		
		log.info(this.getClass().getName() + ".ResList start!");
		
		List<ResFeedbackDTO> rList = resFeedbackService.getResList();
		
		if(rList==null) {
			rList = new ArrayList<ResFeedbackDTO>();
		}
		
		model.addAttribute("rList", rList);
		
		rList = null;
		
		log.info(this.getClass().getName() + ".NoticeList end!");
		
		return "/resFeedback/resList";
	}
	
	
	//게시글 상세보기와 댓글 등록하기(하나에 가능?)
	@RequestMapping(value="resFeedback/resDetailFeedback")
	public String ResDetailFeedback(HttpServletRequest request, Model model) throws Exception{
		
		/*
		 * 작성중
		 * */
		
		return "/resFeedback/resDetailFeedback";
	}
	
	@RequestMapping(value="resFeedback/resFeedbackInsert")
	public String ResFeedbackInsert(HttpSession session, HttpServletRequest request, Model model) throws Exception {
		
		log.info(this.getClass().getName() + ".ResFeedbackInsert start");
		
		
		
		return "/redirect";
	}
	
	/*
	@RequestMapping(value="resFeedback/resFeedbackInsert")
	public String ResFeedbackRegProc(HttpSession session, HttpServletRequest request, Model model) throws Exception{
	
	return "/redirect"
	}
*/
}




//피드백게시판 번호는 3번 (임의설정)