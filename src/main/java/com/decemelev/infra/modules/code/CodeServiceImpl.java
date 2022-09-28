package com.decemelev.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		Code result = dao.SelectOne(vo);
		System.out.println("service selectOne result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		int result = dao.selectOneCount(vo);
		System.out.println("service selectOneCount result: " + result);
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception {
		int result = dao.update(dto);
		return result;
	}
	
	@Override
	public int uelete(Code dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CodeVo vo) throws Exception {
		return dao.delete(vo);
	}
	
//	셀렉트 네임
	
	@Override
	public List<Code> selectname(Code dto) throws Exception {
		return dao.selectName(dto);
	}
	
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Code> selectListCachedCode(String infrCodeGroup_ifcgSeq) throws Exception {
		System.out.println("여기 옴1?");
		List<Code> rt = new ArrayList<Code>();
		System.out.println("여기 옴2?");
		for(Code codeRow : Code.cachedCodeArrayList) {
			if(codeRow.getInfrCodeGroup_ifcgSeq().equals(infrCodeGroup_ifcgSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedCode(int code) throws Exception {
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getIfcdSeq().equals(Integer.toString(code))) {
				rt = codeRow.getIfcdName();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
	
}