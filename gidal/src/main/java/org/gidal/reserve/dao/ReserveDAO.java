package org.gidal.reserve.dao;

import java.util.List;



import org.gidal.enterprise.domain.EnterpriseVO;
import org.gidal.reserve.domain.ReserveVO;
import org.gidal.user.domain.UserVO;


public interface ReserveDAO {

	public int reserve_insert(ReserveVO vo);
	public List<ReserveVO> reserve_view();
	public EnterpriseVO selectOne(Integer code);
	public int reserve_update();
	public void reserve_cancel(String reserve_code);
	public UserVO selectUser(String str);
	public List<ReserveVO> reserve_alert(String user);
	public List<ReserveVO> reserve_alert_now(String user);



}
