package com.decemelev.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class HomeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.decemelev.infra.modules.home.HomeMapper";
	
	public List<Home> selectList() {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectList", "");
		return list;
	}
	
	public List<Home> selectContents() {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectContents", "");
		return list;
	}
	
	public List<Home> selectTest() {
		List<Home> test = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectTest", "");
		return test;
	}
	
	public List<Home> selectRank() {
		List<Home> rank = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectRank", "");
		return rank;
	}
	
	public int update(Home dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int pwdUpdate(Home dto) {
		return sqlSession.update(namespace + ".pwdUpdate", dto);
	}
	
	public Home memberList(HomeVo vo) {
		Home list = sqlSession.selectOne(namespace + ".memberList", vo);
		return list;
	}
	public int selectOnePwdCheck(Home dto) {
		return sqlSession.selectOne(namespace + ".selectOnePwdCheck", dto);
	}
	
	public List<Home> selectListUploaded(HomeVo vo){ return sqlSession.selectList(namespace + ".selectListUploaded", vo); }
	
}
