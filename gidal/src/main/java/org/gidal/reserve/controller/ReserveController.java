package org.gidal.reserve.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.gidal.enterprise.domain.EnterpriseVO;
import org.gidal.enterprise.service.EnterpriseService;
import org.gidal.reserve.domain.ReserveVO;
import org.gidal.reserve.service.ReserveService;
import org.gidal.review.service.ReviewService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/reserve/")
public class ReserveController {


	@Inject private ReserveService service;
	@Inject private ReviewService re;
	@Inject private EnterpriseService ent;

	/**
	 * 예약 페이지 이동
	 *
	 * 로그인 세션을 이용하여, 이름과 전화번호를 세션에 넣어주어 페이지 이동.
	 *
	 * @param int, HttpSession, Model
	 * @return Model
	 * @throws
	 */

	@RequestMapping(value = "/reserve", method = RequestMethod.GET)
	public String enterprise_details(@RequestParam("enterprise_code") int code, HttpSession session, Model model, EnterpriseVO vo) {

		String email = (String)session.getAttribute("LOGIN");

		if (email == null) {
			return "redirect:/authentication/signIn";
		}else {


			String a = ent.enterpriseBoard_view(code).getEnterprise_closed();

			System.out.println(a.replaceAll(",", ""));
			String b = a.replaceAll(",", "");

			String [] arr = new String[b.length()];
			String c = "";

			arr = b.split("");
			for (int i = 0; i < b.length(); i++) {

				if(i != b.length()-1) {
					arr [i] = "day != " + arr[i] + " && ";
				}else {
					arr [i] = "day != " + arr[i];

				}

			}

			for (int i = 0; i < arr.length; i++) {
				c += arr[i];
			}





		model.addAttribute("closed", c);
		model.addAttribute(ent.enterpriseBoard_view(code));
		session.setAttribute("user", service.selectOne(email));
		model.addAttribute(service.selectOne(code));
			return "/reserve/reserve";
		}

	}

	/**
	 * @throws Exception
	 * 예약 처리 메소드
	 *
	 * @param ReserveVO
	 * @return String
	 * @throws
	 */


	@RequestMapping(value = "/reserve_insert", method = RequestMethod.GET)
	public String reserve_insert(ReserveVO vo) throws Exception {

		service.reserve_insert(vo);
		 return "/reserve/success";
	}

	@RequestMapping(value = "/reserve_cancel", method = RequestMethod.GET)
	public String reserve_cancel(String check, String reserve_code) throws Exception {

		if(check.equals("user")) {
			service.reserve_cancel(reserve_code);
			return "redirect:/reserve/cancelResult";
		} else {
			return "redirect:/";
		}

	}

	@RequestMapping(value = "/cancelResult", method = RequestMethod.GET)
	public String cancelResult() throws Exception {

		return "/reserve/cancelResult";


	}

}






