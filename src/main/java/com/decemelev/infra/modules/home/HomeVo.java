package com.decemelev.infra.modules.home;

import com.decemelev.infra.common.base.BaseVo;

public class HomeVo extends BaseVo{
	
	private String mainKey;
	private String ifmmSeq;
	private String sdwSeq;
	private String sdWord_sdwSeq;
	private String sdfSeq;
	

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
