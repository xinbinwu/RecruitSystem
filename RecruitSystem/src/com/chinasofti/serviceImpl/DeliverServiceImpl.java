package com.chinasofti.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.chinasofti.dao.DeliverMapper;
import com.chinasofti.model.Deliver;
import com.chinasofti.service.DeliverService;

@Component

public class DeliverServiceImpl implements DeliverService {
	@Resource
	private DeliverMapper deliverMapper;

	@Override
	public int insertInfo(Deliver deliver) {
		// TODO Auto-generated method stub
		return this.deliverMapper.insertInfo(deliver);
	}

	@Override
	public int deleteDeliver(int id) {
		// TODO Auto-generated method stub
		return this.deliverMapper.deleteDeliver(id);
	}

	@Override
	public List<Deliver> selectAllDeliver() {
		// TODO Auto-generated method stub
		return this.deliverMapper.selectAllDeliver();
	}

	@Override
	public int selectByJobId(int id) {
		// TODO Auto-generated method stub
		return this.deliverMapper.selectByJobId(id);
	}

	@Override
	public int selectByUserID(int id) {
		// TODO Auto-generated method stub
		return this.deliverMapper.selectByUserID(id);
	}

	@Override
	public int selectByJobIdUserID(int i, int k) {
		// TODO Auto-generated method stub
		return this.deliverMapper.selectByJobIdUserID(i, k);
	}

	@Override
	public int delectByUserIDComName(int id, String com_name) {
		// TODO Auto-generated method stub
		return this.deliverMapper.delectByUserIDComName(id, com_name);
	}

}
