package com.decemelev.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.decemelev.infra.common.util.UtilUpload;



@Service
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	HomeDao dao;
	
	@Override
	public int selectWordCount(HomeVo vo) throws Exception {
		int result = dao.selectWordCount(vo);
		return result;
	}
	@Override
	public int WordCount(HomeVo vo) throws Exception {
		int result = dao.WordCount(vo);
		return result;
	}
	@Override
	public Home selectOneWord(HomeVo vo) throws Exception{
		Home result = dao.selectOneWord(vo);
		System.out.println("service selectOneWord result: "+result);
		return result;
	}
	
	@Override
	public List<Home> selectOneWordList(HomeVo vo) throws Exception {
		List<Home> list = dao.selectOneWordList(vo);
		return list;
	}
	@Override
	public List<Home> favoriteList(Home dto) throws Exception {
		List<Home> list = dao.favoriteList(dto);
		return list;
	}
	
	@Override
	public int delete(HomeVo vo) throws Exception{
		int result = dao.delete(vo);
		return result;
	}
	
	@Override
	public List<Home> selectList(Home dto) throws Exception {
		List<Home> list = dao.selectList(dto);
		return list;
	}
	@Override
	public List<Home> wordList(HomeVo vo) throws Exception {
		List<Home> list = dao.wordList(vo);
		return list;
	}
	
	@Override
	public List<Home> selectContents(Home dto) throws Exception {
		List<Home> item = dao.selectContents(dto);
		return item;
	}
	@Override
	public List<Home> wordContents(HomeVo vo) throws Exception {
		List<Home> item = dao.wordContents(vo);
		return item;
	}
	@Override
	public List<Home> myWordContents(HomeVo vo) throws Exception {
		List<Home> item = dao.myWordContents(vo);
		return item;
	}
	@Override
	public List<Home> myWordList(HomeVo vo) throws Exception {
		List<Home> list = dao.myWordList(vo);
		return list;
	}
	@Override
	public List<Home> selectTest() throws Exception {
		List<Home> test = dao.selectTest();
		return test;
	}
	@Override
	public List<Home> selectTest(Home dto) throws Exception {
		List<Home> test = dao.selectTest(dto);
		return test;
	}
	
	@Override
	public Home testDate(Home dto) throws Exception {
		Home result = dao.testDate(dto);
		System.out.println("service testDate result: " + result);
		return result;
	}

	@Override
	public List<Home> selectRank() throws Exception {
		List<Home> rank = dao.selectRank();
		return rank;
	}
	@Override
	public List<Home> selectRank1() throws Exception {
		List<Home> rank = dao.selectRank1();
		return rank;
	}
	
	@Override
	public int update(Home dto) throws Exception {
		int result = dao.update(dto);
		
		for(MultipartFile multipartFile : dto.getIfmmUploadedProfileImage() ) {
    		
			System.out.println(!multipartFile.isEmpty());
			 
    		if(!multipartFile.isEmpty() == true) {

    			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
	    		UtilUpload.upload1(multipartFile, pathModule, dto);
	    		
	    		dto.setTableName("infrMemberUploaded");
	    		dto.setType(1);
	    		dto.setDefaultNy(1);
	    		dto.setSort(1);
	    		dto.setPseq(dto.getIfmmSeq());

				dao.uploadedUpdate(dto);
				
    		} else {

    			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
	    		UtilUpload.upload1(multipartFile, pathModule, dto);
	    		
	    		dto.setTableName("infrMemberUploaded");
	    		dto.setType(1);
	    		dto.setDefaultNy(1);
	    		dto.setSort(1);
	    		dto.setPseq(dto.getIfmmSeq());

				dao.insertUploaded(dto);
    		}
    	}
		
		System.out.println(result);
		return result;
	}
	@Override
	public int pwdUpdate(Home dto) throws Exception {
		int result = dao.pwdUpdate(dto);
		System.out.println(result);
		return result;
	}
	@Override
	public Home memberList(HomeVo vo) throws Exception {
		Home list = dao.memberList(vo);
		return list;
	}
	@Override
	public int selectOnePwdCheck(Home dto) throws Exception {
		int result = dao.selectOnePwdCheck(dto);
		System.out.println("service selectOnePwdCheck result: " + result);
		return result;
	}
	
	@Override
	public List<Home> selectListUploaded(HomeVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}
	
	@Override
	public int insert(Home dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: "+ result);
		return result;
	}
	@Override
	public int likeInsert(Home dto) throws Exception{
		int result = dao.likeInsert(dto);
		System.out.println("service result: "+ result);
		return result;
	}
	@Override
    public int selectOneWordCount(HomeVo vo) throws Exception {
        return dao.selectOneWordCount(vo);
    }
	
	@Override
	public int likeUpdate(Home dto) throws Exception {
		int result = dao.likeUpdate(dto);
		System.out.println(result);
		return result;
	}
}
