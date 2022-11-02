package com.decemelev.infra.modules.home;

import org.springframework.web.multipart.MultipartFile;

import com.decemelev.infra.common.base.Base;

public class Home extends Base {
	
	private String sddSeq;
	private String sddDateChoice;
	
	private String sdwSeq;
	private String sdwWord;
	private Integer sdwNum;
	private String sdDate_sddSeq;
	
	private String sdwmSeq;
	private String sdwmPartOfSpeech;
	private String sdwmContents;
	private Integer sdwmNum;
	private String sdWord_sdwSeq;
	
	private String sdweSeq;
	private String sdweContents;
	private String sdweTranslate;
	private Integer sdweDefaultNy;
	private String first;
	private String second;
	private String answer;
	
	
	private String sdqSeq;
	private Integer sdqNumber;
	private String sdqKo;
	private String sdqEng;
	private String sdqAnswer;
	

	private String infrMember_ifmmSeq;
	private String ifmmName;
	private Integer sdtrsTotalScore;
	
	private String ifmmSeq;
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
	
	private String ifcdName;
	private String ifcdSeq;
	
	private MultipartFile[] ifmmUploadedProfileImage;
	
	private String name;
	private String sum;
	private String ranking;
	
	private Integer sdfDelNy;
	
	private String mainKey;
	
	
	private String cnt1;
	private String cnt2;
	private String cnt3;
	private String cnt4;
	private String cnt5;
	private String cnt6;
	private String cnt7;
	private String cnt8;
	private String mmddhh;
	private String mmdd1;
	private String mmdd2;
	private String mmdd3;
	private String mmdd4;
	private String mmdd5;
	private String mmdd6;
	private String mmdd7;
	private String mmdd8;
	private String rate1;
	private String rate2;
	private String rate3;
	private String rate4;
	private String rate5;
	private String rate6;
	private String rate7;
	private String rate8;
	private String resultCode;
	private String resultMsg;
	private String resultCnt;
	
	public Object header;

	public Object body;
	public int pageNo;
	public int totalCount;
	public int numOfRows;

	public Object[] items;
	public String YYYY;
	public String MM;
	public String KIT_PROD_QTY;
	public String KIT_EXPRT_QTY;
	public String KIT_STOCK_QTY;
	
	
	
	public Object getHeader() {
		return header;
	}
	public void setHeader(Object header) {
		this.header = header;
	}
	public Object getBody() {
		return body;
	}
	public void setBody(Object body) {
		this.body = body;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getNumOfRows() {
		return numOfRows;
	}
	public void setNumOfRows(int numOfRows) {
		this.numOfRows = numOfRows;
	}
	public Object[] getItems() {
		return items;
	}
	public void setItems(Object[] items) {
		this.items = items;
	}
	public String getYYYY() {
		return YYYY;
	}
	public void setYYYY(String yYYY) {
		YYYY = yYYY;
	}
	public String getMM() {
		return MM;
	}
	public void setMM(String mM) {
		MM = mM;
	}
	public String getKIT_PROD_QTY() {
		return KIT_PROD_QTY;
	}
	public void setKIT_PROD_QTY(String kIT_PROD_QTY) {
		KIT_PROD_QTY = kIT_PROD_QTY;
	}
	public String getKIT_EXPRT_QTY() {
		return KIT_EXPRT_QTY;
	}
	public void setKIT_EXPRT_QTY(String kIT_EXPRT_QTY) {
		KIT_EXPRT_QTY = kIT_EXPRT_QTY;
	}
	public String getKIT_STOCK_QTY() {
		return KIT_STOCK_QTY;
	}
	public void setKIT_STOCK_QTY(String kIT_STOCK_QTY) {
		KIT_STOCK_QTY = kIT_STOCK_QTY;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public String getResultCnt() {
		return resultCnt;
	}
	public void setResultCnt(String resultCnt) {
		this.resultCnt = resultCnt;
	}
	public String getCnt1() {
		return cnt1;
	}
	public void setCnt1(String cnt1) {
		this.cnt1 = cnt1;
	}
	public String getCnt2() {
		return cnt2;
	}
	public void setCnt2(String cnt2) {
		this.cnt2 = cnt2;
	}
	public String getCnt3() {
		return cnt3;
	}
	public void setCnt3(String cnt3) {
		this.cnt3 = cnt3;
	}
	public String getCnt4() {
		return cnt4;
	}
	public void setCnt4(String cnt4) {
		this.cnt4 = cnt4;
	}
	public String getCnt5() {
		return cnt5;
	}
	public void setCnt5(String cnt5) {
		this.cnt5 = cnt5;
	}
	public String getCnt6() {
		return cnt6;
	}
	public void setCnt6(String cnt6) {
		this.cnt6 = cnt6;
	}
	public String getCnt7() {
		return cnt7;
	}
	public void setCnt7(String cnt7) {
		this.cnt7 = cnt7;
	}
	public String getCnt8() {
		return cnt8;
	}
	public void setCnt8(String cnt8) {
		this.cnt8 = cnt8;
	}
	public String getMmddhh() {
		return mmddhh;
	}
	public void setMmddhh(String mmddhh) {
		this.mmddhh = mmddhh;
	}
	public String getMmdd1() {
		return mmdd1;
	}
	public void setMmdd1(String mmdd1) {
		this.mmdd1 = mmdd1;
	}
	public String getMmdd2() {
		return mmdd2;
	}
	public void setMmdd2(String mmdd2) {
		this.mmdd2 = mmdd2;
	}
	public String getMmdd3() {
		return mmdd3;
	}
	public void setMmdd3(String mmdd3) {
		this.mmdd3 = mmdd3;
	}
	public String getMmdd4() {
		return mmdd4;
	}
	public void setMmdd4(String mmdd4) {
		this.mmdd4 = mmdd4;
	}
	public String getMmdd5() {
		return mmdd5;
	}
	public void setMmdd5(String mmdd5) {
		this.mmdd5 = mmdd5;
	}
	public String getMmdd6() {
		return mmdd6;
	}
	public void setMmdd6(String mmdd6) {
		this.mmdd6 = mmdd6;
	}
	public String getMmdd7() {
		return mmdd7;
	}
	public void setMmdd7(String mmdd7) {
		this.mmdd7 = mmdd7;
	}
	public String getMmdd8() {
		return mmdd8;
	}
	public void setMmdd8(String mmdd8) {
		this.mmdd8 = mmdd8;
	}
	public String getRate1() {
		return rate1;
	}
	public void setRate1(String rate1) {
		this.rate1 = rate1;
	}
	public String getRate2() {
		return rate2;
	}
	public void setRate2(String rate2) {
		this.rate2 = rate2;
	}
	public String getRate3() {
		return rate3;
	}
	public void setRate3(String rate3) {
		this.rate3 = rate3;
	}
	public String getRate4() {
		return rate4;
	}
	public void setRate4(String rate4) {
		this.rate4 = rate4;
	}
	public String getRate5() {
		return rate5;
	}
	public void setRate5(String rate5) {
		this.rate5 = rate5;
	}
	public String getRate6() {
		return rate6;
	}
	public void setRate6(String rate6) {
		this.rate6 = rate6;
	}
	public String getRate7() {
		return rate7;
	}
	public void setRate7(String rate7) {
		this.rate7 = rate7;
	}
	public String getRate8() {
		return rate8;
	}
	public void setRate8(String rate8) {
		this.rate8 = rate8;
	}
	public String getMainKey() {
		return mainKey;
	}
	public void setMainKey(String mainKey) {
		this.mainKey = mainKey;
	}
	public Integer getSdfDelNy() {
		return sdfDelNy;
	}
	public void setSdfDelNy(Integer sdfDelNy) {
		this.sdfDelNy = sdfDelNy;
	}
	public Integer getSdwmNum() {
		return sdwmNum;
	}
	public void setSdwmNum(Integer sdwmNum) {
		this.sdwmNum = sdwmNum;
	}
	public String getRanking() {
		return ranking;
	}
	public void setRanking(String ranking) {
		this.ranking = ranking;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}
	public Integer getSdwNum() {
		return sdwNum;
	}
	public void setSdwNum(Integer sdwNum) {
		this.sdwNum = sdwNum;
	}
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getSecond() {
		return second;
	}
	public void setSecond(String second) {
		this.second = second;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	public Integer getSdweDefaultNy() {
		return sdweDefaultNy;
	}
	public void setSdweDefaultNy(Integer sdweDefaultNy) {
		this.sdweDefaultNy = sdweDefaultNy;
	}
	public MultipartFile[] getIfmmUploadedProfileImage() {
		return ifmmUploadedProfileImage;
	}
	public void setIfmmUploadedProfileImage(MultipartFile[] ifmmUploadedProfileImage) {
		this.ifmmUploadedProfileImage = ifmmUploadedProfileImage;
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
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
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
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
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
	public String getIfmmAddress() {
		return ifmmAddress;
	}
	public void setIfmmAddress(String ifmmAddress) {
		this.ifmmAddress = ifmmAddress;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
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
	public String getInfrMember_ifmmSeq() {
		return infrMember_ifmmSeq;
	}
	public void setInfrMember_ifmmSeq(String infrMember_ifmmSeq) {
		this.infrMember_ifmmSeq = infrMember_ifmmSeq;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public Integer getSdtrsTotalScore() {
		return sdtrsTotalScore;
	}
	public void setSdtrsTotalScore(Integer sdtrsTotalScore) {
		this.sdtrsTotalScore = sdtrsTotalScore;
	}
	public String getSdqSeq() {
		return sdqSeq;
	}
	public void setSdqSeq(String sdqSeq) {
		this.sdqSeq = sdqSeq;
	}
	public Integer getSdqNumber() {
		return sdqNumber;
	}
	public void setSdqNumber(Integer sdqNumber) {
		this.sdqNumber = sdqNumber;
	}
	public String getSdqKo() {
		return sdqKo;
	}
	public void setSdqKo(String sdqKo) {
		this.sdqKo = sdqKo;
	}
	public String getSdqEng() {
		return sdqEng;
	}
	public void setSdqEng(String sdqEng) {
		this.sdqEng = sdqEng;
	}
	public String getSdqAnswer() {
		return sdqAnswer;
	}
	public void setSdqAnswer(String sdqAnswer) {
		this.sdqAnswer = sdqAnswer;
	}
	public String getSddSeq() {
		return sddSeq;
	}
	public void setSddSeq(String sddSeq) {
		this.sddSeq = sddSeq;
	}
	public String getSddDateChoice() {
		return sddDateChoice;
	}
	public void setSddDateChoice(String sddDateChoice) {
		this.sddDateChoice = sddDateChoice;
	}
	public String getSdwSeq() {
		return sdwSeq;
	}
	public void setSdwSeq(String sdwSeq) {
		this.sdwSeq = sdwSeq;
	}
	public String getSdwWord() {
		return sdwWord;
	}
	public void setSdwWord(String sdwWord) {
		this.sdwWord = sdwWord;
	}
	public String getSdDate_sddSeq() {
		return sdDate_sddSeq;
	}
	public void setSdDate_sddSeq(String sdDate_sddSeq) {
		this.sdDate_sddSeq = sdDate_sddSeq;
	}
	public String getSdwmSeq() {
		return sdwmSeq;
	}
	public void setSdwmSeq(String sdwmSeq) {
		this.sdwmSeq = sdwmSeq;
	}
	public String getSdwmPartOfSpeech() {
		return sdwmPartOfSpeech;
	}
	public void setSdwmPartOfSpeech(String sdwmPartOfSpeech) {
		this.sdwmPartOfSpeech = sdwmPartOfSpeech;
	}
	public String getSdwmContents() {
		return sdwmContents;
	}
	public void setSdwmContents(String sdwmContents) {
		this.sdwmContents = sdwmContents;
	}
	public String getSdWord_sdwSeq() {
		return sdWord_sdwSeq;
	}
	public void setSdWord_sdwSeq(String sdWord_sdwSeq) {
		this.sdWord_sdwSeq = sdWord_sdwSeq;
	}
	public String getSdweSeq() {
		return sdweSeq;
	}
	public void setSdweSeq(String sdweSeq) {
		this.sdweSeq = sdweSeq;
	}
	public String getSdweContents() {
		return sdweContents;
	}
	public void setSdweContents(String sdweContents) {
		this.sdweContents = sdweContents;
	}
	public String getSdweTranslate() {
		return sdweTranslate;
	}
	public void setSdweTranslate(String sdweTranslate) {
		this.sdweTranslate = sdweTranslate;
	}
	
	
	
	
	
	
	
}
