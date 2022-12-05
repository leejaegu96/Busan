package com.decemelev.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	
	private String ifcgSeq;
	private String ifcgName;
	private String ifcgEngName;
	private Integer ifcgUseNy;
	private Integer ifcgOrder;
	private Integer ifcgCount;
	private Integer count;
	private Integer ifcgDelNy;
	private Date ifcgRegDate;
	private Date ifcgModDate;
	
	// oracle
	private String IFCG_SEQ;
	private String IFCG_NAME;
	private String IFCG_ENGNAME;
	private String IFCG_USENY;
	private String IFCG_DELNY;
	private String IFCG_ORDER;
	private String IFCG_MODDATE;
	private String IFCG_REGDATE;
	
	
		
	

	public String getIFCG_SEQ() {
		return IFCG_SEQ;
	}
	public void setIFCG_SEQ(String iFCG_SEQ) {
		IFCG_SEQ = iFCG_SEQ;
	}
	public String getIFCG_NAME() {
		return IFCG_NAME;
	}
	public void setIFCG_NAME(String iFCG_NAME) {
		IFCG_NAME = iFCG_NAME;
	}
	public String getIFCG_ENGNAME() {
		return IFCG_ENGNAME;
	}
	public void setIFCG_ENGNAME(String iFCG_ENGNAME) {
		IFCG_ENGNAME = iFCG_ENGNAME;
	}
	public String getIFCG_USENY() {
		return IFCG_USENY;
	}
	public void setIFCG_USENY(String iFCG_USENY) {
		IFCG_USENY = iFCG_USENY;
	}
	public String getIFCG_DELNY() {
		return IFCG_DELNY;
	}
	public void setIFCG_DELNY(String iFCG_DELNY) {
		IFCG_DELNY = iFCG_DELNY;
	}
	public String getIFCG_ORDER() {
		return IFCG_ORDER;
	}
	public void setIFCG_ORDER(String iFCG_ORDER) {
		IFCG_ORDER = iFCG_ORDER;
	}
	public String getIFCG_MODDATE() {
		return IFCG_MODDATE;
	}
	public void setIFCG_MODDATE(String iFCG_MODDATE) {
		IFCG_MODDATE = iFCG_MODDATE;
	}
	public String getIFCG_REGDATE() {
		return IFCG_REGDATE;
	}
	public void setIFCG_REGDATE(String iFCG_REGDATE) {
		IFCG_REGDATE = iFCG_REGDATE;
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
	public Integer getIfcgDelNy() {
		return ifcgDelNy;
	}
	public void setIfcgDelNy(Integer ifcgDelNy) {
		this.ifcgDelNy = ifcgDelNy;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
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
