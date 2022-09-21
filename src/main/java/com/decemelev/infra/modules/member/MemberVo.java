package com.decemelev.infra.modules.member;

import com.decemelev.infra.common.base.BaseVo;

public class MemberVo extends BaseVo {
	
	private Integer shOption;
	private String shValue;
	private String shUseNy;
	private String shDelNy;
	private Integer shOptionDate;
	private String ifmmSeq;
	
	private String shDateStart;
	private String shDateEnd;
	
	
	
	public String getShDateStart() {
		return shDateStart;
	}
	public void setShDateStart(String shDateStart) {
		this.shDateStart = shDateStart;
	}
	public String getShDateEnd() {
		return shDateEnd;
	}
	public void setShDateEnd(String shDateEnd) {
		this.shDateEnd = shDateEnd;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public String getShUseNy() {
		return shUseNy;
	}
	public void setShUseNy(String shUseNy) {
		this.shUseNy = shUseNy;
	}
	public String getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(String shDelNy) {
		this.shDelNy = shDelNy;
	}
	public Integer getShOptionDate() {
		return shOptionDate;
	}
	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	
	
}
