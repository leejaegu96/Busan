package com.decemelev.infra.modules.login;


import org.springframework.web.multipart.MultipartFile;

import com.decemelev.infra.common.base.Base;

public class Login extends Base {
	
	private String ifmmSeq;
	private String ifmmName;
	private String ifmmId;
	private String ifmmEmail;
	private Integer ifmmEmailDomain;
	private String ifmmPassword;
	private Integer ifmmGender;
	private String ifmmDob;
	private Integer ifmmPhoneCarrier;
	private String ifmmPhone;
	private String ifmmAddress;
	private Integer ifmmDelNy;
	private Integer ifmmMailNy;
	private Integer ifmmSmsNy;
	private String ifmmPostNum;
	private String ifmmResidence;
	private String ifmmDetailedAddress;
	private String ifmmReference;
	private Integer ifmmSnsLogin;
	
	
	private MultipartFile[] ifmmUploadedProfileImage;
	
//	카카오 로그인
	private String token;
	private String email;
	private String gender;
	private String birthday;
	private String snsId;
	private String dob;
	private String name;
	private String seq;
	private String id;
	
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSnsId() {
		return snsId;
	}
	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public Integer getIfmmSnsLogin() {
		return ifmmSnsLogin;
	}
	public void setIfmmSnsLogin(Integer ifmmSnsLogin) {
		this.ifmmSnsLogin = ifmmSnsLogin;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public MultipartFile[] getIfmmUploadedProfileImage() {
		return ifmmUploadedProfileImage;
	}
	public void setIfmmUploadedProfileImage(MultipartFile[] ifmmUploadedProfileImage) {
		this.ifmmUploadedProfileImage = ifmmUploadedProfileImage;
	}
	public String getIfmmPostNum() {
		return ifmmPostNum;
	}
	public void setIfmmPostNum(String ifmmPostNum) {
		this.ifmmPostNum = ifmmPostNum;
	}
	public String getIfmmResidence() {
		return ifmmResidence;
	}
	public void setIfmmResidence(String ifmmResidence) {
		this.ifmmResidence = ifmmResidence;
	}
	public String getIfmmDetailedAddress() {
		return ifmmDetailedAddress;
	}
	public void setIfmmDetailedAddress(String ifmmDetailedAddress) {
		this.ifmmDetailedAddress = ifmmDetailedAddress;
	}
	public String getIfmmReference() {
		return ifmmReference;
	}
	public void setIfmmReference(String ifmmReference) {
		this.ifmmReference = ifmmReference;
	}
	public Integer getIfmmMailNy() {
		return ifmmMailNy;
	}
	public void setIfmmMailNy(Integer ifmmMailNy) {
		this.ifmmMailNy = ifmmMailNy;
	}
	public Integer getIfmmSmsNy() {
		return ifmmSmsNy;
	}
	public void setIfmmSmsNy(Integer ifmmSmsNy) {
		this.ifmmSmsNy = ifmmSmsNy;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmmAddress() {
		return ifmmAddress;
	}
	public void setIfmmAddress(String ifmmAddress) {
		this.ifmmAddress = ifmmAddress;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmEmail() {
		return ifmmEmail;
	}
	public void setIfmmEmail(String ifmmEmail) {
		this.ifmmEmail = ifmmEmail;
	}
	public Integer getIfmmEmailDomain() {
		return ifmmEmailDomain;
	}
	public void setIfmmEmailDomain(Integer ifmmEmailDomain) {
		this.ifmmEmailDomain = ifmmEmailDomain;
	}
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}
	public Integer getIfmmGender() {
		return ifmmGender;
	}
	public void setIfmmGender(Integer ifmmGender) {
		this.ifmmGender = ifmmGender;
	}
	
	public Integer getIfmmPhoneCarrier() {
		return ifmmPhoneCarrier;
	}
	public void setIfmmPhoneCarrier(Integer ifmmPhoneCarrier) {
		this.ifmmPhoneCarrier = ifmmPhoneCarrier;
	}
	public String getIfmmPhone() {
		return ifmmPhone;
	}
	public void setIfmmPhone(String ifmmPhone) {
		this.ifmmPhone = ifmmPhone;
	}
	
	
}
