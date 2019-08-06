package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.ReviewDTO;
import poly.service.IReviewService;
import poly.service.impl.ReviewService;


@Controller
public class ReviewController {

	@Resource(name="reviewService")
	private IReviewService reviewService;
	
	@RequestMapping(value="hello")
	public String Hello(HttpServletRequest request, Model model) throws Exception{
		return "/index";
	}
//	@RequestMapping(value="review/reviewList")
//	public String getReviewList(HttpServletRequest request, Model model) throws Exception{
//		List<ReviewDTO> rList=new ArrayList<>();
//		rList=reviewService.getReviewList();
//		model.addAttribute("rData",rList);
//		return "/review/reviewList";
//	}
}
