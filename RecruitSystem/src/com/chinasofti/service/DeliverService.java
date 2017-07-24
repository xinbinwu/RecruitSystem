package com.chinasofti.service;

import java.util.List;

import com.chinasofti.model.Deliver;

public interface DeliverService {

	int insertInfo(Deliver deliver);

	int deleteDeliver(int id);

	List<Deliver> selectAllDeliver();

	int selectByJobId(int id);

	int selectByUserID(int id);

	int selectByJobIdUserID(int i, int k);

	int delectByUserIDComName(int id, String com_name);

}
