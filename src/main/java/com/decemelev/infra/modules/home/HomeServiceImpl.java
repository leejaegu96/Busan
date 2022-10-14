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
	public List<Home> selectList() throws Exception {
		List<Home> list = dao.selectList();
		return list;
	}
	@Override
	public List<Home> selectContents() throws Exception {
		List<Home> item = dao.selectContents();
		return item;
	}
	@Override
	public List<Home> selectTest() throws Exception {
		List<Home> test = dao.selectTest();
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
}
