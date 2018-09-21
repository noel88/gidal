package org.gidal.waiting.service;

import javax.inject.Inject;

import org.gidal.enterprise.domain.EnterpriseVO;
import org.gidal.user.domain.UserVO;
import org.gidal.waiting.dao.WaitingDAO;
import org.gidal.waiting.domain.WaitingVO;
import org.springframework.stereotype.Service;

@Service
public class WaitingServiceImpl implements WaitingService{

	@Inject
	private WaitingDAO dao;



	@Override
	public EnterpriseVO selectOne(Integer code) {
		return dao.selectOne(code);
	}



	@Override
	public UserVO selectOne(String str) {
		return dao.selectUser(str);
	}



	@Override
	public int waiting_insert(WaitingVO vo) {
		return dao.waiting_insert(vo);
	}

}
