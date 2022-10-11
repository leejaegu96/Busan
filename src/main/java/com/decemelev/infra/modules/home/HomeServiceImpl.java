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
	@Override
	public List<Home> selectContents() throws Exception {
		List<Home> item = dao.selectContents();
		return item;
	}
	@Override
	public List<Home> selectTest() throws Exception {
		List<Home> test = dao.selectTest();
		return test;
	}
	@Override
	public List<Home> selectRank() throws Exception {
		List<Home> rank = dao.selectRank();
		return rank;
	}
	
	@Override
	public int update(Home dto) throws Exception {
		int result = dao.update(dto);
		System.out.println(result);
		return result;
	}
	@Override
	public int pwdUpdate(Home dto) throws Exception {
		int result = dao.pwdUpdate(dto);
		System.out.println(result);
		return result;
	}
	@Override
	public Home memberList(HomeVo vo) throws Exception {
		Home list = dao.memberList(vo);
		return list;
	}
	@Override
	public int selectOnePwdCheck(Home dto) throws Exception {
		int result = dao.selectOnePwdCheck(dto);
		System.out.println("service selectOnePwdCheck result: " + result);
		return result;
	}
	
	@Override
	public List<Home> selectListUploaded(HomeVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}
}
