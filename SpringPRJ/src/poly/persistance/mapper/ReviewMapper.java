package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.ReviewDTO;

@Mapper(value="reviewMapper")
public interface ReviewMapper {

	List<ReviewDTO> getReviewList() throws Exception;

	

	

}
