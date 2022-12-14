package com.decemelev.infra.modules.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.decemelev.infra.common.util.UtilDateTime;
import com.decemelev.infra.common.util.UtilSecurity;
import com.decemelev.infra.common.util.UtilUpload;


@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginDao dao;
	
	@Override
	public List<Login> selectList() throws Exception {
		List<Login> list = dao.selectList();
		return list;
	}
	
	@Override
	public int insert(Login dto) throws Exception {
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
    	dto.setIfmmName(dto.getIfmmName());
		/* dto.setIfmmPwdModDate(UtilDateTime.nowDate()); */
		int result = dao.insert(dto);
		
		for(MultipartFile multipartFile : dto.getIfmmUploadedProfileImage() ) {
    		
    		if(!multipartFile.isEmpty()) {

    			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
	    		UtilUpload.uploadLogin(multipartFile, pathModule, dto);
	    		
	    		dto.setTableName("infrMemberUploaded");
	    		dto.setType(1);
	    		dto.setDefaultNy(1);
	    		dto.setSort(1);
	    		dto.setPseq(dto.getIfmmSeq());

				dao.insertUploaded(dto);
    		}
    	}
		
		System.out.println("service insert result: " + result);
		return result;
	}
	@Override
	public int kakaoInst(Login dto) throws Exception {
		int result = dao.kakaoInst(dto);
		System.out.println("service insert result: " + result);
		return result;
	}
	@Override
	public int naverInst(Login dto) throws Exception {
		int result = dao.naverInst(dto);
		System.out.println("service insert result: " + result);
		return result;
	}
	
	@Override
	public Login snsLoginCheck(Login dto) throws Exception {
		Login result = dao.snsLoginCheck(dto);
		System.out.println("service snsLoginCheck result: " + result);
		return result;
	}
	@Override
	public Login snsLoginCheckNaver(Login dto) throws Exception {
		Login result = dao.snsLoginCheckNaver(dto);
		System.out.println("service snsLoginCheck result: " + result);
		return result;
	}
	@Override
	public int selectOneIdCheck(Login dto) throws Exception {
		int result = dao.selectOneIdCheck(dto);
		System.out.println("service selectOneIdCheck result: " + result);
		return result;
	}
	
	@Override
	public Login selectOneId(Login dto) throws Exception {
		Login result = dao.selectOneId(dto);
		System.out.println("service selectOneId result: " + result);
		return result;
	}
	@Override
	public Login selectOneId1(Login dto) throws Exception {
		Login result = dao.selectOneId1(dto);
		System.out.println("service selectOneId1 result: " + result);
		return result;
	}
	
	@Override
	public Login selectOneLogin(Login dto) throws Exception {
		Login result = dao.selectOneLogin(dto);
		System.out.println("service selectOneLogin result: " + result);
		return result;
	}
	@Override
	public Login selectOneLogin1(Login dto) throws Exception {
		Login result = dao.selectOneLogin1(dto);
		System.out.println("service selectOneLogin1 result: " + result);
		return result;
	}
}
