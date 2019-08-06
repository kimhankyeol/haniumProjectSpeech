package poly.service;

import java.util.List;

import poly.dto.ReviewDTO;

public interface IReviewService {

	List<ReviewDTO> getReviewList() throws Exception;

}
