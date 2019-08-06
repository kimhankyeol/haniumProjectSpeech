package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.ReviewDTO;
import poly.persistance.mapper.ReviewMapper;
import poly.service.IReviewService;

@Service(value="reviewService")
public class ReviewService implements IReviewService {

	@Resource(name="reviewMapper")
	private ReviewMapper reviewMapper;

	public List<ReviewDTO> getReviewList() throws Exception {
		// TODO Auto-generated method stub
		return reviewMapper.getReviewList();
	}
}
