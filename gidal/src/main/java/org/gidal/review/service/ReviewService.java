package org.gidal.review.service;

import java.util.List;

import org.gidal.reserve.domain.ReserveVO;
import org.gidal.review.domain.ReviewVO;
import org.gidal.waiting.domain.WaitingVO;

public interface ReviewService {
	public int userReview(ReviewVO vo);
	public List<ReviewVO> ent_review(Integer code);
	public ReserveVO reserve(Integer code);
	public WaitingVO waiting(Integer code);
	public String getEnterprise_businessName(int enterprise_code);
	public ReviewVO readReview(String rcode);
	public void reviewDelete(String rcode);
}
