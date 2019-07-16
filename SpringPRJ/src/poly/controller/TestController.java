package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.TestCommentDTO;
import poly.service.ITestCommentService;

@Controller
public class TestController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="TestCommentService")
	private ITestCommentService testCommentService;
	
	
	@RequestMapping(value="/test/testCommentReg")
	public String CommentRegTest() {
		log.info(this.getClass().getName());
		
		return "test/testCommentReg";
	}
	
	@RequestMapping(value="test/commentRegProc")
	public String CommentRegProc(HttpServletRequest request, Model model) {
		log.info(this.getClass().getName());
		
		String comment = request.getParameter("comment");
		
		log.info(comment);
		
		TestCommentDTO tcDTO = new TestCommentDTO();
		tcDTO.setComment(comment);
		
		int result = 0;
		
		try {
			result = testCommentService.insertTestComment(tcDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(result>0) {
			model.addAttribute("url", "/test/testcommentReg.do");
			model.addAttribute("msg", "댓글을 달았습니다!");
		} else {
			model.addAttribute("url", "/test/testcommentReg.do");
			model.addAttribute("msg", "댓글을 달 수 없습니다.");
		}
		
		return "/redirect";
	}
}
