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
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.FeedbackCommentDTO;
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
		
		
		
		log.info(this.getClass().getName() + ".ResList end!");
		
		return "/resFeedback/resList";
	}
	
	
	//게시글 상세보기와 댓글 등록하기(하나에 가능?)
	@RequestMapping(value="resFeedback/resDetailFeedback")
	public String ResDetailFeedback(HttpServletRequest request, Model model) throws Exception{
		
		log.info(this.getClass().getName());
		
		String feedbackNo = request.getParameter("postno");
		
		ResFeedbackDTO rDTO = new ResFeedbackDTO();
		//FeedbackCommentDto fcDTO = new FeedbackCommentDTO();
		
		rDTO = resFeedbackService.getResDetail(feedbackNo);
		
		
		if(rDTO==null) {
			rDTO = new ResFeedbackDTO();
		}
		
		//fcDTO = resFeedbackService.commentReg 
		
		log.info("getResDetail success.");
		//log.info("commentReg success.");
		
		model.addAttribute("rDTO", rDTO);
	
		
		return "/resFeedback/resDetailFeedback";
	}
	
	
	
	@RequestMapping(value="resFeedback/resFeedbackInsert")
	public @ResponseBody String CommentReg(HttpSession session, HttpServletRequest request, Model model) throws Exception{
	
		//String user_id = (String)session.getAttribute("");
		String feedbackNo = request.getParameter("feedback_no");
		String regNo = request.getParameter("regno");
		String commenttext = request.getParameter("commenttext");
				
		//log.info(user_id);
		log.info(feedbackNo);
		log.info(regNo);
		log.info(commenttext);
		
		FeedbackCommentDTO fcDTO = new FeedbackCommentDTO();
		fcDTO.setCommenttext(commenttext);
		fcDTO.setRegNo(regNo);
		
		int result = 0;
		
		try {
			result = resFeedbackService.commentReg(fcDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return "/redirect";
	}

}




//피드백게시판 번호는 3번 (임의설정)