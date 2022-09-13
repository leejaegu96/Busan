package com.decemelev.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.decemelev.infra.modules.codegroup.CodeGroup;
import com.decemelev.infra.modules.codegroup.CodeGroupVo;

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
	
}
