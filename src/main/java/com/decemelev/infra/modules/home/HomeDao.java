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
	
	public int selectWordCount(HomeVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectWordCount", vo);
		System.out.println("dao selectWordCount result :" + result);
		return result;
	}
	public int WordCount(HomeVo vo) {
		int result = sqlSession.selectOne(namespace + ".WordCount", vo);
		System.out.println("dao WordCount result :" + result);
		return result;
	}
	public Home selectOneWord(HomeVo vo) {
		Home result = sqlSession.selectOne(namespace+".selectOneWord", vo);
		return result;
	}
	
	public List<Home> selectOneWordList(HomeVo vo) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectOneWordList", vo);
		return list;
	}
	
//	word insert
	public int dateInsert(Home dto) {
		int result = sqlSession.insert(namespace + ".dateInsert", dto);
		System.out.println("dao.result :" + result);
		return result;
	}
	public int wordInsert(Home dto) {
		int result = sqlSession.insert(namespace + ".wordInsert", dto);
		System.out.println("dao.result :" + result);
		return result;
	}
	public int meanInsert(Home dto) {
		int result = sqlSession.insert(namespace + ".meanInsert", dto);
		System.out.println("dao.result :" + result);
		return result;
	}
	public int exampleInsert(Home dto) {
		int result = sqlSession.insert(namespace + ".exampleInsert", dto);
		System.out.println("dao.result :" + result);
		return result;
	}
//	word insert
	
	
	public List<Home> favoriteList(Home dto) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.favoriteList", dto);
		return list;
	}
	
	public int delete(HomeVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public List<Home> selectList(Home dto) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectList", dto);
		return list;
	}
	public List<Home> selectContents(Home dto) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectContents", dto);
		return list;
	}
	public List<Home> wordList(HomeVo vo) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.wordList", vo);
		return list;
	}
	public List<Home> wordContents(HomeVo vo) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.wordContents", vo);
		return list;
	}
	public List<Home> myWordList(HomeVo vo) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.myWordList", vo);
		return list;
	}
	public List<Home> myWordContents(HomeVo vo) {
		List<Home> list = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.myWordContents", vo);
		return list;
	}
	
	public List<Home> selectTest() {
		List<Home> test = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectTest", "");
		return test;
	}
	public List<Home> selectTest(Home dto) {
		List<Home> test = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectTest", dto);
		return test;
	}
	public Home testDate(Home dto) {
		return sqlSession.selectOne(namespace + ".testDate", dto);
	}

	
//	rank
	public List<Home> selectRank() {
		List<Home> rank = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectRank", "");
		return rank;
	}
	public List<Home> selectRank1() {
		List<Home> rank = sqlSession.selectList("com.decemelev.infra.modules.home.HomeMapper.selectRank1", "");
		return rank;
	}
	public List<Home> selectRankDate(HomeVo vo){
		List<Home> rank = sqlSession.selectList(namespace +".selectRankDate", vo);
		return rank;
	}
//	rank
	
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
	
	public int insertUploaded(Home dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
	public int uploadedUpdate(Home dto){ return sqlSession.update(namespace + ".uploadedUpdate", dto); }
	
	
	public int insert(Home dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao.result :" + result);
		return result;
	}
	public int likeInsert(Home dto) {
		int result = sqlSession.insert(namespace + ".likeInsert", dto);
		System.out.println("dao.result :" + result);
		return result;
	}
	public int selectOneWordCount(HomeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneWordCount", vo);
	}
	
	public int likeUpdate(Home dto) {
		return sqlSession.update(namespace + ".likeUpdate", dto);
	}
}
