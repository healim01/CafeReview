package com.cafe.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ReviewController {
	@Autowired
	CafeService cafeService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String boardlist(Model model) { 
		model.addAttribute("list", cafeService.getReviewList()); 
		return "reviews";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addReview() { 
		return "addreviewform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addReviewOK(ReviewVO vo) {
		int i = cafeService.insertReview(vo);
		if (i == 0)
			System.out.println("리뷰를 등록하지 못했습니다.");
		else
			System.out.println("리뷰를 정상적으로 등록되었습니다.");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/info/{id}", method = RequestMethod.GET)
	public String loadmore(@PathVariable("id") int id, Model model) {
		ReviewVO reviewVO = cafeService.getReview(id);
		model.addAttribute("reviewVO", reviewVO);
		return "info";
	}
	
	@RequestMapping(value = "/editpost/{id}", method = RequestMethod.GET)
	public String editBook(@PathVariable("id") int id, Model model) {
		ReviewVO reviewVO = cafeService.getReview(id);
		model.addAttribute("reviewVO", reviewVO);
		return "editform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editReviewOK(ReviewVO vo) {
		int i = cafeService.updateReview(vo);
		if (i == 0)
			System.out.println("리뷰를 수정하지 못했습니다.");
		else
			System.out.println("리뷰가 정상적으로 수정되었습니다.");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id, Model model) {
		int i = cafeService.deleteReview(id);
		if (i==0) 
			System.out.println("리뷰를 삭제하지 못했습니다.");
		else 
			System.out.println("리뷰가 정상적으로 삭제되었습니다.");
		return "redirect:../list";
	}
}
