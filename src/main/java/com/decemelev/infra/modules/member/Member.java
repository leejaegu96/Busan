package com.decemelev.infra.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.decemelev.infra.common.base.Base;


public class Member extends Base {
	
	private String ifmmSeq;
	private String ifmmName;
	private String ifmmId;
	private String ifmmEmail;
	private Integer ifmmEmailDomain;
	private String ifmmPassword;
	private Integer ifmmGender;
	private Date ifmmDob;
	private Integer ifmmPhoneCarrier;
	private String ifmmPhone;
	private Integer ifmmMailNy;
	private Integer ifmmSmsNy;
	private String ifcdName;
	private Integer ifmmDelNy;
	
	private MultipartFile[] ifmmUploadedProfileImage;
	
	
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
	public MultipartFile[] getIfmmUploadedProfileImage() {
		return ifmmUploadedProfileImage;
	}
	public void setIfmmUploadedProfileImage(MultipartFile[] ifmmUploadedProfileImage) {
		this.ifmmUploadedProfileImage = ifmmUploadedProfileImage;
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
	public Date getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(Date ifmmDob) {
		this.ifmmDob = ifmmDob;
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
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	

	
	
}
