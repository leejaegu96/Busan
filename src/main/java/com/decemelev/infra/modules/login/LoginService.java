package com.decemelev.infra.modules.login;

import java.util.List;


public interface LoginService {
	
	public List<Login> selectList() throws Exception; 
	
	public int insert(Login dto) throws Exception;
	public int kakaoInst(Login dto) throws Exception;
	
	public Login snsLoginCheck(Login dto) throws Exception;
	public int selectOneIdCheck(Login dto) throws Exception;
	
	public Login selectOneId(Login dto) throws Exception;
	public Login selectOneId1(Login dto) throws Exception;
	public Login selectOneLogin(Login dto) throws Exception;
	public Login selectOneLogin1(Login dto) throws Exception;
	
}
