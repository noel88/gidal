package org.gidal.enterprise.service;

import java.io.IOException;
import java.util.List;

import org.gidal.enterprise.domain.EnterpriseVO;
import org.gidal.enterprise.domain.JoinEntReviewVO;
import org.gidal.reserve.domain.ReserveVO;
import org.gidal.review.domain.ReviewVO;
import org.gidal.waiting.domain.WaitingVO;

public interface EnterpriseService {

	public void enterprise_join(EnterpriseVO vo) throws IOException, Exception;
	public int enterprise_check(EnterpriseVO vo);
	public int enterpriseBoard_update(EnterpriseVO vo);
	public List<EnterpriseVO> enterpriseBoard_list();
	public EnterpriseVO enterpriseBoard_view(Integer code);
	public List<WaitingVO> waiting_list(Integer code);
	public List<WaitingVO> last_waiting_list(Integer code);
	public List<ReserveVO> reserve_listCheck(Integer code);
	public List<ReserveVO> reserve_list(Integer code);
	public List<ReserveVO> last_reserve_list(Integer code);
	public List<ReserveVO> reserve_now_list(Integer code);
	public int find_enterprise_code(String str);
	public int waiting_update(Integer code);
	public int reserve_update(Integer code);
	public int update_reserveConfirmation_yn(Integer code) throws Exception;
	public int delete(EnterpriseVO vo);
	public void enterprise_img(EnterpriseVO vo);
	public List<EnterpriseVO> ent_best();
	public List<EnterpriseVO> ent_popular();
	public int reserve_count(Integer code);
	public int waiting_count(Integer code);
	public int ent_detail_update(EnterpriseVO vo);
	public int reserve_listCheck_cnt(Integer code);
	public int review_scope(Integer code);
	public List<JoinEntReviewVO> waitingReview(Integer code);
	public List<JoinEntReviewVO> reserveReview(Integer code);
	public JoinEntReviewVO findReview(Integer code);
	public void entReply(ReviewVO vo);
	public void delReply(Integer code);
	public int total_reserve_cnt(Integer code);
	public int total_waiting_cnt(Integer code);
	public int total_review_cnt(Integer code);
	public int list_cnt();
	public void update_updateReserveCancel(Integer code) throws Exception;
	public void update_updateWaitingCancel(Integer code);
	public void update_updateWaitingAlert(Integer code);







}
