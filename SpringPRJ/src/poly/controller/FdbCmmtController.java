package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.FeedbackCommentDTO;
import poly.service.IFeedbackCommentService;

@Controller
public class FdbCmmtController {

	public Logger log = Logger.getLogger(this.getClass().getName());
	
	@Resource(name = "FeedbackCommentService")
	private IFeedbackCommentService feedbackCommentService;
	
	@RequestMapping(value="resFeedback/resFeedbackInsert")
	public @ResponseBody String CommentReg(HttpSession session, HttpServletRequest request, FeedbackCommentDTO fcDTO) throws Exception{
	
//		String user_id = (String)session.getAttribute(/*"유저아이디?"*/);
				
		//log.info(user_id);
		String regno = (String)session.getAttribute("userNo");
		fcDTO.setRegNo(regno);
		
		
		
		int result = 0;
		
		try {
			result = feedbackCommentService.commentReg(fcDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(result>0) {
			//model.addAttribute();
		}
		
		return "/redirect";
	}
	
}
