package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.ReviewDTO;
import poly.service.impl.ReviewService;


@Controller
@RequestMapping(value="/review")
public class ReviewController {

	@Resource(name="reviewService")
	private ReviewService reviewService;
	@RequestMapping(value="/list")
	public String getReviewList(Model model) throws Exception{
		List<ReviewDTO> rList=new ArrayList<>();
		rList=reviewService.getReviewList();
		model.addAttribute("rData",rList);
		return "/review/reviewList";
	}
}
