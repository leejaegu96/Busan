package com.decemelev.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		List<Member> list = dao.selectList();
		return list;
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service insert result: " + result);
		return result;
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		int result = dao.selectOneCount(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
		
	@Override
	public int update(Member dto) throws Exception {
		System.out.println("업 서 출");
		int result = dao.update(dto);
		System.out.println("업 서 도");
		System.out.println("service update result: " + result);
		return result;
	}
	
	@Override
	public int uelete(Member dto) throws Exception {
		int result = dao.uelete(dto);
		return result;
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception {
		int result = dao.delete(vo);
		return result;
	}
	
	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		int result = dao.selectOneIdCheck(dto);
		return result;
	}
	/*
	 * @Override public int signUp(Member dto) throws Exception { int result =
	 * dao.signUp(dto); return result; }
	 */
}
