package com.decemelev.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.decemelev.infra.common.util.UtilSecurity;
import com.decemelev.infra.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList() throws Exception {
		List<Member> list = dao.selectList();
		return list;
	}

	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int insert(Member dto) throws Exception {
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		int result = dao.insert(dto);

		for (MultipartFile multipartFile : dto.getIfmmUploadedProfileImage()) {

			if (!multipartFile.isEmpty()) {

				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.upload(multipartFile, pathModule, dto);

				dto.setTableName("infrMemberUploaded");
				dto.setType(1);
				dto.setDefaultNy(1);
				dto.setSort(1);
				dto.setPseq(dto.getIfmmSeq());

				dao.uploadedUpdate(dto);
			} else {

				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.upload(multipartFile, pathModule, dto);

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
	public Member selectOne(MemberVo vo) throws Exception {
		Member result = dao.selectOne(vo);
		System.out.println("service selectOne result: " + result);
		return result;
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		int result = dao.selectOneCount(vo);
		System.out.println("service selectOneCount result: " + result);
		return result;
	}

	@Override
	public int update(Member dto) throws Exception {
		System.out.println("??? ??? ???");
		int result = dao.update(dto);

		for (MultipartFile multipartFile : dto.getIfmmUploadedProfileImage()) {

			System.out.println(!multipartFile.isEmpty());

			if (!multipartFile.isEmpty() == true) {
				
				if(dto.getExt() == null) {
					String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl",
							"");
					UtilUpload.upload(multipartFile, pathModule, dto);

					dto.setTableName("infrMemberUploaded");
					dto.setType(1);
					dto.setDefaultNy(1);
					dto.setSort(1);
					dto.setPseq(dto.getIfmmSeq());

					dao.insertUploaded(dto);
				}else {
					String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
					UtilUpload.upload(multipartFile, pathModule, dto);

					dto.setTableName("infrMemberUploaded");
					dto.setType(1);
					dto.setDefaultNy(1);
					dto.setSort(1);
					dto.setPseq(dto.getIfmmSeq());
					
					dao.uploadedUpdate(dto);
				}

			} else {
				if (dto.getExt() == null) {
					System.out.println("???????????? ????????? ????????? ??????.");
				} else {
					String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl",
							"");
					UtilUpload.upload(multipartFile, pathModule, dto);

					dto.setTableName("infrMemberUploaded");
					dto.setType(1);
					dto.setDefaultNy(1);
					dto.setSort(1);
					dto.setPseq(dto.getIfmmSeq());

					dao.insertUploaded(dto);
				}
			}
		}

		System.out.println("??? ??? ???");
		System.out.println("service update result: " + result);
		return result;
	}

	@Override
	public int uelete(Member dto) throws Exception {
		int result = dao.uelete(dto);
		return result;
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		int result = dao.delete(vo);
		return result;
	}

	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		int result = dao.selectOneIdCheck(dto);
		System.out.println("service selectOneIdCheck result: " + result);
		return result;
	}

	@Override
	public List<Member> selectListUploaded(MemberVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}

	/*
	 * @Override public int signUp(Member dto) throws Exception { int result =
	 * dao.signUp(dto); return result; }
	 */
}
