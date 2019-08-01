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
import poly.service.IFeedbackCommentService;

@Controller
public class FdbCmmtController {

	public Logger log = Logger.getLogger(this.getClass().getName());
	
	@Resource(name = "FeedbackCommentService")
	private IFeedbackCommentService feedbackCommentService;
	
	@RequestMapping(value="resFeedback/resFeedbackInsert")
	public @ResponseBody void CommentReg(HttpSession session, HttpServletRequest request, FeedbackCommentDTO fcDTO, Model model) throws Exception{
	
		log.info("feedback_no : " + fcDTO.getFeedbackNo());
		log.info("comment : " + fcDTO.getCommenttext());
		log.info("regno : " + fcDTO.getRegNo());
		
		try {
			feedbackCommentService.commentReg(fcDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		log.info(this.getClass().getName() + " end.");
	}
	
	@RequestMapping(value="resFeedback/resFeedbackDelete")
	public @ResponseBody void CommentDel(HttpSession session, HttpServletRequest request, Model modle, String commentNo) throws Exception{
		
		log.info(this.getClass().getName());
		
		try {
			feedbackCommentService.commentDel(commentNo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			log.info(this.getClass().getName() + " successfully ended.");
		}
		
	
	}
	
	@RequestMapping(value="resFeedback/resFeedbackListPage")
	public String CommentListPage(HttpSession session, HttpServletRequest request, Model model, String feedbackNo) throws Exception {
		
		log.info(feedbackNo);
		log.info("start : "+ this.getClass().getName());
		
		List<FeedbackCommentDTO> fcDTO = feedbackCommentService.fcList(feedbackNo);
	
		FeedbackCommentDTO elementDTO = new FeedbackCommentDTO();
		
		
		model.addAttribute("fcDTO", fcDTO);
		
		log.info("end : " + this.getClass().getName());
		
		return "/resFeedback/resFeedbackList";
	}
	
	
	
	
	
}