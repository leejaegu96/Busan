package com.decemelev.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	HomeDao dao;
	
	@Override
	public List<Home> selectList() throws Exception {
		List<Home> list = dao.selectList();
		return list;
	}
	
	
	
}
