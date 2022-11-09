package com.decemelev.infra.modules.home;

import com.decemelev.infra.common.base.BaseVo;

public class HomeVo extends BaseVo{
	
	private String mainKey;
	private String ifmmSeq;
	private String sdwSeq;
	private String sdWord_sdwSeq;
	private String sdfSeq;
	
	private Integer shOption;
	private String shValue;
	private Integer shUseNy;
	private Integer shDelNy;
	private Integer shOptionDate;
	private String shDateStart;
	private String shDateEnd;
	
	

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

	public Integer getShUseNy() {
		return shUseNy;
	}

	public void setShUseNy(Integer shUseNy) {
		this.shUseNy = shUseNy;
	}

	public Integer getShDelNy() {
		return shDelNy;
	}

	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}

	public Integer getShOptionDate() {
		return shOptionDate;
	}

	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}

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

	public String getSdfSeq() {
		return sdfSeq;
	}

	public void setSdfSeq(String sdfSeq) {
		this.sdfSeq = sdfSeq;
	}

	public String getSdWord_sdwSeq() {
		return sdWord_sdwSeq;
	}

	public void setSdWord_sdwSeq(String sdWord_sdwSeq) {
		this.sdWord_sdwSeq = sdWord_sdwSeq;
	}

	public String getSdwSeq() {
		return sdwSeq;
	}

	public void setSdwSeq(String sdwSeq) {
		this.sdwSeq = sdwSeq;
	}

	public String getIfmmSeq() {
		return ifmmSeq;
	}

	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}

	public String getMainKey() {
		return mainKey;
	}

	public void setMainKey(String mainKey) {
		this.mainKey = mainKey;
	}
	
	
}
