package com.cafe.review;

import java.util.List;

public interface CafeService {
	public int insertReview(ReviewVO vo);
	public int deleteReview(int id);
	public int updateReview(ReviewVO vo);
	public ReviewVO getReview(int id);
	public List<ReviewVO> getReviewList();
}
