package com.decemelev.infra.modules.login;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class LoginDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.decemelev.infra.modules.login.LoginMapper";
	
	public List<Login> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
	
	public int insert(Login dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao insert result: " + result);
		return result;
	}
	
	public int selectOneIdCheck(Login dto) { return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);}
	
	public Login selectOneId(Login dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	public Login selectOneId1(Login dto) {
		return sqlSession.selectOne(namespace + ".selectOneId1", dto);
	}
	public Login selectOneLogin(Login dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	public Login selectOneLogin1(Login dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin1", dto);
	}
	
	public int insertUploaded(Login dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
}
