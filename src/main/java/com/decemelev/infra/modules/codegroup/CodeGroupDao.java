package com.decemelev.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOracle;
	
	private static String namespace = "com.decemelev.infra.modules.codegroup.CodeGroupMapper";
	
//	public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public List<CodeGroup> selectList(CodeGroupVo vo) {
//		List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<CodeGroup> list = sqlSession.selectList("com.decemelev.infra.modules.codegroup.CodeGroupMapper.selectList", vo);
		return list;
	}
	
	public List<CodeGroup> selectList() {
//		List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<CodeGroup> list = sqlSession.selectList("com.decemelev.infra.modules.codegroup.CodeGroupMapper.selectList", "");
		return list;
	}
	public List<CodeGroup> selectCG() {
		List<CodeGroup> list = sqlSessionOracle.selectList(namespace + ".selectCG","");
		return list;
	}
	
	
	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int selectOneCount(CodeGroupVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(CodeGroup dto) { 
		System.out.println("업데이트 다오 출");
		return sqlSession.update(namespace + ".update", dto); 
	}
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CodeGroupVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
}
