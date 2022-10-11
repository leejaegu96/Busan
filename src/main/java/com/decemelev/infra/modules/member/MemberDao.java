package com.decemelev.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.decemelev.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
	public List<Member> selectList(MemberVo vo){ 
		List<Member> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list; 
		}
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	public int selectOneCount(MemberVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	 
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao insert result: " + result);
		return result;
	}
	
	public int update(Member dto) { 
		return sqlSession.update(namespace + ".update", dto); 
	}
	public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(MemberVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int selectOneIdCheck(Member dto) { return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);}
	
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
	public List<Member> selectListUploaded(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListUploaded", vo); }
	
	public int uploadedUpdate(Member dto){ return sqlSession.update(namespace + ".uploadedUpdate", dto); }
	
	/*
	 * public int signUp(Member dto) { return sqlSession.selectOne(namespace +
	 * ".signUp", dto); }
	 */
}
