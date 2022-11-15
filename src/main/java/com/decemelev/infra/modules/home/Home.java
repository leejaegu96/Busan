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
	private Integer count;
	private String ranking;
	
	private Integer sdfDelNy;
	private String sdfSeq;
	private String mainKey;
	
	
	
	
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
	
	public String ctime;
	private String cid;
	private String cname;
	private String subject;
	private String location;
	private String charge;
	private String target;
	private String cover;
	private String programName;
	private String intro;
	
	
	
	
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getSdfSeq() {
		return sdfSeq;
	}
	public void setSdfSeq(String sdfSeq) {
		this.sdfSeq = sdfSeq;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getProgramName() {
		return programName;
	}
	public void setProgramName(String programName) {
		this.programName = programName;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
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
