package com.decemelev.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> selectList(CodeVo vo) throws Exception; 
	 
}
