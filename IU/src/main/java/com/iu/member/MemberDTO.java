package com.iu.member;

public class MemberDTO {
	int MEM_NO;
	String MEM_ID,MEM_PW,MEM_NAME,MEM_NICKNAME,MEM_SB,MEM_BIRTH,MEM_EMAIL,MEM_ADDRESS,MEM_TEL;

	public MemberDTO() {}

	public MemberDTO(int mEM_NO, String mEM_ID, String mEM_PW, String mEM_NAME, String mEM_NICKNAME, String mEM_SB,
			String mEM_BIRTH, String mEM_EMAIL, String mEM_ADDRESS, String mEM_TEL) {
		super();
		MEM_NO = mEM_NO;
		MEM_ID = mEM_ID;
		MEM_PW = mEM_PW;
		MEM_NAME = mEM_NAME;
		MEM_NICKNAME = mEM_NICKNAME;
		MEM_SB = mEM_SB;
		MEM_BIRTH = mEM_BIRTH;
		MEM_EMAIL = mEM_EMAIL;
		MEM_ADDRESS = mEM_ADDRESS;
		MEM_TEL = mEM_TEL;
	}

	public int getMEM_NO() {
		return MEM_NO;
	}

	public void setMEM_NO(int mEM_NO) {
		MEM_NO = mEM_NO;
	}

	public String getMEM_ID() {
		return MEM_ID;
	}

	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}

	public String getMEM_PW() {
		return MEM_PW;
	}

	public void setMEM_PW(String mEM_PW) {
		MEM_PW = mEM_PW;
	}

	public String getMEM_NAME() {
		return MEM_NAME;
	}

	public void setMEM_NAME(String mEM_NAME) {
		MEM_NAME = mEM_NAME;
	}

	public String getMEM_NICKNAME() {
		return MEM_NICKNAME;
	}

	public void setMEM_NICKNAME(String mEM_NICKNAME) {
		MEM_NICKNAME = mEM_NICKNAME;
	}

	public String getMEM_SB() {
		return MEM_SB;
	}

	public void setMEM_SB(String mEM_SB) {
		MEM_SB = mEM_SB;
	}

	public String getMEM_BIRTH() {
		return MEM_BIRTH;
	}

	public void setMEM_BIRTH(String mEM_BIRTH) {
		MEM_BIRTH = mEM_BIRTH;
	}

	public String getMEM_EMAIL() {
		return MEM_EMAIL;
	}

	public void setMEM_EMAIL(String mEM_EMAIL) {
		MEM_EMAIL = mEM_EMAIL;
	}

	public String getMEM_ADDRESS() {
		return MEM_ADDRESS;
	}

	public void setMEM_ADDRESS(String mEM_ADDRESS) {
		MEM_ADDRESS = mEM_ADDRESS;
	}

	public String getMEM_TEL() {
		return MEM_TEL;
	}

	public void setMEM_TEL(String mEM_TEL) {
		MEM_TEL = mEM_TEL;
	}


	
}
/*
CREATE TABLE "MEMBER"
("MEM_NO" number(6,0) NOT NULL ENABLE,
"MEM_ID" VARCHAR2(20 BYTE),
"MEM_PW" VARCHAR2(20 BYTE),
"MEM_NAME" VARCHAR2(10 BYTE),
"MEM_NICKNAME" VARCHAR2(50 BYTE),
"MEM_SB" VARCHAR2(20 BYTE),
"MEM_BIRTH" DATE,
"MEM_EMAIL" VARCHAR2(100 BYTE),
"MEM_ADDRESS" VARCHAR2(100 BYTE),
"MEM_TEL" VARCHAR2(200 BYTE),
CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEM_NO"));
CREATE SEQUENCE MEM_NO_SEQ; 
*/
