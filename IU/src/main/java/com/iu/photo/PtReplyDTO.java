package com.iu.photo;

public class PtReplyDTO 
{
	int PT_NO,PT_RNO;
	String PT_WRITEDAY,PT_CONTENT,PT_WRITER;
	int PT_GROUPS,PT_STEP,PT_INDENT;
	
	public PtReplyDTO() {}
	
	public PtReplyDTO(int pT_NO, int pT_RNO, String pT_WRITEDAY, String pT_CONTENT, String pT_WRITER, int pT_GROUPS,
			int pT_STEP, int pT_INDENT) {
		super();
		PT_NO = pT_NO;
		PT_RNO = pT_RNO;
		PT_WRITEDAY = pT_WRITEDAY;
		PT_CONTENT = pT_CONTENT;
		PT_WRITER = pT_WRITER;
		PT_GROUPS = pT_GROUPS;
		PT_STEP = pT_STEP;
		PT_INDENT = pT_INDENT;
	}
	
	public int getPT_NO() {
		return PT_NO;
	}
	public void setPT_NO(int pT_NO) {
		PT_NO = pT_NO;
	}
	public int getPT_RNO() {
		return PT_RNO;
	}
	public void setPT_RNO(int pT_RNO) {
		PT_RNO = pT_RNO;
	}
	public String getPT_WRITEDAY() {
		return PT_WRITEDAY;
	}
	public void setPT_WRITEDAY(String pT_WRITEDAY) {
		PT_WRITEDAY = pT_WRITEDAY;
	}
	public String getPT_CONTENT() {
		return PT_CONTENT;
	}
	public void setPT_CONTENT(String pT_CONTENT) {
		PT_CONTENT = pT_CONTENT;
	}
	public String getPT_WRITER() {
		return PT_WRITER;
	}
	public void setPT_WRITER(String pT_WRITER) {
		PT_WRITER = pT_WRITER;
	}
	public int getPT_GROUPS() {
		return PT_GROUPS;
	}
	public void setPT_GROUPS(int pT_GROUPS) {
		PT_GROUPS = pT_GROUPS;
	}
	public int getPT_STEP() {
		return PT_STEP;
	}
	public void setPT_STEP(int pT_STEP) {
		PT_STEP = pT_STEP;
	}
	public int getPT_INDENT() {
		return PT_INDENT;
	}
	public void setPT_INDENT(int pT_INDENT) {
		PT_INDENT = pT_INDENT;
	}
	
}
/*
CREATE TABLE "PTREPLY" 
(   "PT_NO" NUMBER(6,0) DEFAULT 0,  
"PT_RNO" number(6,0) NOT NULL ENABLE,
"PT_WRITEDAY" DATE DEFAULT sysdate,
"PT_CONTENT" VARCHAR2(500 BYTE),
"PT_WRITER" VARCHAR2(20 BYTE),
"PT_GROUPS" NUMBER(6,0) DEFAULT 0, 
"PT_STEP" NUMBER(6,0) DEFAULT 0, 
"PT_INDENT" NUMBER(6,0) DEFAULT 0, 
CONSTRAINT "PTREPLY_PK" PRIMARY KEY ("PT_RNO")
);
CREATE SEQUENCE PT_RNO_SEQ;
*/
