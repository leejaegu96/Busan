package com.decemelev.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	
	private String ifcgSeq;
	private String ifcgName;
	private String ifcgEngName;
	private Integer ifcgUseNy;
	private Integer ifcgOrder;
	private Integer ifcgCount;
	private Date ifcgRegDate;
	private Date ifcgModDate;
	private Integer count;
	
		
	
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Date getIfcgRegDate() {
		return ifcgRegDate;
	}
	public void setIfcgRegDate(Date ifcgRegDate) {
		this.ifcgRegDate = ifcgRegDate;
	}
	public Date getIfcgModDate() {
		return ifcgModDate;
	}
	public void setIfcgModDate(Date ifcgModDate) {
		this.ifcgModDate = ifcgModDate;
	}
	public String getIfcgEngName() {
		return ifcgEngName;
	}
	public void setIfcgEngName(String ifcgEngName) {
		this.ifcgEngName = ifcgEngName;
	}
	public Integer getIfcgCount() {
		return ifcgCount;
	}
	public void setIfcgCount(Integer ifcgCount) {
		this.ifcgCount = ifcgCount;
	}

	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	public Integer getIfcgUseNy() {
		return ifcgUseNy;
	}
	public void setIfcgUseNy(Integer ifcgUseNy) {
		this.ifcgUseNy = ifcgUseNy;
	}
	public Integer getIfcgOrder() {
		return ifcgOrder;
	}
	public void setIfcgOrder(Integer ifcgOrder) {
		this.ifcgOrder = ifcgOrder;
	}

}
