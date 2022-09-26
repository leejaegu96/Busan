package com.decemelev.infra.modules.home;

import java.util.List;

public interface HomeService {

	public List<Home> selectList() throws Exception;
	public List<Home> selectContents() throws Exception;
	public List<Home> selectTest() throws Exception;
	public List<Home> selectRank() throws Exception;
}
