package com.decemelev.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
	private String ifcdSeq; 
	private String ifcdName;
	private Integer ifcdUseNy;
	private Integer ifcdOrder;
	
	private String ifcdEngName;
	
	private String ifcgEngName;
	
	private String infrCodeGroup_ifcgSeq;
	private Integer ifcdDelNy;
	
	
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	private String ifcgName;
	private String ifcgSeq;
	
	
	
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public Integer getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(Integer ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	public String getInfrCodeGroup_ifcgSeq() {
		return infrCodeGroup_ifcgSeq;
	}
	public void setInfrCodeGroup_ifcgSeq(String infrCodeGroup_ifcgSeq) {
		this.infrCodeGroup_ifcgSeq = infrCodeGroup_ifcgSeq;
	}
	
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public Integer getIfcdUseNy() {
		return ifcdUseNy;
	}
	public void setIfcdUseNy(Integer ifcdUseNy) {
		this.ifcdUseNy = ifcdUseNy;
	}
	public Integer getIfcdOrder() {
		return ifcdOrder;
	}
	public void setIfcdOrder(Integer ifcdOrder) {
		this.ifcdOrder = ifcdOrder;
	}

	public String getIfcdEngName() {
		return ifcdEngName;
	}
	public void setIfcdEngName(String ifcdEngName) {
		this.ifcdEngName = ifcdEngName;
	}
	public String getIfcgEngName() {
		return ifcgEngName;
	}
	public void setIfcgEngName(String ifcgEngName) {
		this.ifcgEngName = ifcgEngName;
	}
	
	
	
	
	
	
	
	
}
