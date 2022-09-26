package com.decemelev.infra.modules.login;

import java.util.List;

public interface LoginService {
	
	public List<Login> selectList() throws Exception; 
	
	public int insert(Login dto) throws Exception;
	
}
