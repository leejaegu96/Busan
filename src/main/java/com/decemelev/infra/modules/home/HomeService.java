package com.decemelev.infra.modules.home;

import java.util.List;

public interface HomeService {

	public List<Home> selectList() throws Exception;
	public List<Home> selectContents() throws Exception;
	public List<Home> selectTest() throws Exception;
	public List<Home> selectTest(Home dto) throws Exception;
	public Home testDate(Home dto) throws Exception;
	
	
	public List<Home> selectRank() throws Exception;
	
	public Home memberList(HomeVo vo) throws Exception;
	public int update(Home dto) throws Exception;
	public int pwdUpdate(Home dto) throws Exception;
	
	public int selectOnePwdCheck(Home dto) throws Exception;
	
	List<Home> selectListUploaded(HomeVo vo) throws Exception; 
	
	public int insert(Home dto) throws Exception;
	
	
}
