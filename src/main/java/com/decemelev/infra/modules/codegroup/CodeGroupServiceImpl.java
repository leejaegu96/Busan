package com.decemelev.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	CodeGroupDao dao;
	
//	@Override
//	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
//		List<CodeGroup> list = dao.selectList(vo);
//		return list;
//	}
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public List<CodeGroup> selectList() throws Exception {
		List<CodeGroup> list = dao.selectList();
		return list;
	}
	@Override
	public List<CodeGroup> selectCG() throws Exception {
		List<CodeGroup> list = dao.selectCG();
		return list;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		CodeGroup result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		int result = dao.selectOneCount(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	
	
	@Override
	public int update(CodeGroup dto) throws Exception {
		System.out.println("서비스 출");
		int result = dao.update(dto);
		System.out.println("서비스 도");
		return result;
	}


	@Override
	public int uelete(CodeGroup dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CodeGroupVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	
}
