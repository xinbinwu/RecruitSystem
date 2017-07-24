package com.chinasofti.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Deliver;

@Component
public interface DeliverMapper {

	int insertInfo(Deliver deliver);

	int deleteDeliver(int id);

	List<Deliver> selectAllDeliver();

	int selectByJobId(int id);

	int selectByUserID(int id);

	int selectByJobIdUserID(int i, int k);

	int delectByUserIDComName(int id, String com_name);

}
