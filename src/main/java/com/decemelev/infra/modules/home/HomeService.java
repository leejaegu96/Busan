package com.decemelev.infra.modules.home;

import java.util.List;

public interface HomeService {
	
	
	public int selectWordCount(HomeVo vo) throws Exception;
	public int WordCount(HomeVo vo) throws Exception;
	public Home selectOneWord(HomeVo vo) throws Exception;
	public List<Home> selectOneWordList(HomeVo vo) throws Exception;
	
//	word insert
	public int dateInsert(Home dto) throws Exception;
	public int wordInsert(Home dto) throws Exception;
	public int meanInsert(Home dto) throws Exception;
	public int exampleInsert(Home dto) throws Exception;
	
//	word insert
	
	
	public List<Home> favoriteList(Home dto) throws Exception;
	public int delete(HomeVo vo) throws Exception;
	
	public List<Home> selectList(Home dto) throws Exception;
	public List<Home> selectContents(Home dto) throws Exception;
	public List<Home> wordList(HomeVo vo) throws Exception;
	public List<Home> wordContents(HomeVo vo) throws Exception;
	public List<Home> myWordContents(HomeVo vo) throws Exception;
	public List<Home> myWordList(HomeVo vo) throws Exception;
	public List<Home> selectTest() throws Exception;
	public List<Home> selectTest(Home dto) throws Exception;
	public Home testDate(Home dto) throws Exception;
	
//	rank
	public List<Home> selectRank() throws Exception;
	public List<Home> selectRank1() throws Exception;
	public List<Home> selectRankDate(HomeVo vo) throws Exception;
	public Home selectOneRank(HomeVo vo) throws Exception;
//	rank
	public Home memberList(HomeVo vo) throws Exception;
	public int update(Home dto) throws Exception;
	public int pwdUpdate(Home dto) throws Exception;
	
	public int selectOnePwdCheck(Home dto) throws Exception;
	
	List<Home> selectListUploaded(HomeVo vo) throws Exception; 
	
	public int insert(Home dto) throws Exception;
	public int likeInsert(Home dto) throws Exception;
	public int selectOneWordCount(HomeVo vo) throws Exception;
	public int likeUpdate(Home dto) throws Exception;
	
	public List<Home> selectListTest() throws Exception;
}
