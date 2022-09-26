package com.decemelev.infra.modules.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginDao dao;
	
	@Override
	public List<Login> selectList() throws Exception {
		List<Login> list = dao.selectList();
		return list;
	}
	
	@Override
	public int insert(Login dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service insert result: " + result);
		return result;
	}
	
}
