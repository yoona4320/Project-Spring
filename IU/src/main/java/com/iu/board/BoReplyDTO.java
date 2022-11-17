package com.iu.board;

public class BoReplyDTO {
	
		int BO_NO,BO_RNO;
		String BO_WRITEDAY,BO_CONTENT,BO_WRITER;
		int BO_GROUPS,BO_STEP,BO_INDENT;
		public BoReplyDTO() {}
		public BoReplyDTO(int bO_NO, int bO_RNO, String bO_WRITEDAY, String bO_CONTENT, String bO_WRITER, int bO_GROUPS,
				int bO_STEP, int bO_INDENT) {
			super();
			BO_NO = bO_NO;
			BO_RNO = bO_RNO;
			BO_WRITEDAY = bO_WRITEDAY;
			BO_CONTENT = bO_CONTENT;
			BO_WRITER = bO_WRITER;
			BO_GROUPS = bO_GROUPS;
			BO_STEP = bO_STEP;
			BO_INDENT = bO_INDENT;
		}
		public int getBO_NO() {
			return BO_NO;
		}
		public void setBO_NO(int bO_NO) {
			BO_NO = bO_NO;
		}
		public int getBO_RNO() {
			return BO_RNO;
		}
		public void setBO_RNO(int bO_RNO) {
			BO_RNO = bO_RNO;
		}
		public String getBO_WRITEDAY() {
			return BO_WRITEDAY;
		}
		public void setBO_WRITEDAY(String bO_WRITEDAY) {
			BO_WRITEDAY = bO_WRITEDAY;
		}
		public String getBO_CONTENT() {
			return BO_CONTENT;
		}
		public void setBO_CONTENT(String bO_CONTENT) {
			BO_CONTENT = bO_CONTENT;
		}
		public String getBO_WRITER() {
			return BO_WRITER;
		}
		public void setBO_WRITER(String bO_WRITER) {
			BO_WRITER = bO_WRITER;
		}
		public int getBO_GROUPS() {
			return BO_GROUPS;
		}
		public void setBO_GROUPS(int bO_GROUPS) {
			BO_GROUPS = bO_GROUPS;
		}
		public int getBO_STEP() {
			return BO_STEP;
		}
		public void setBO_STEP(int bO_STEP) {
			BO_STEP = bO_STEP;
		}
		public int getBO_INDENT() {
			return BO_INDENT;
		}
		public void setBO_INDENT(int bO_INDENT) {
			BO_INDENT = bO_INDENT;
		}
		
		
		
	}

/*
    CREATE TABLE "BOREPLY" 
   (   "BO_NO" NUMBER(6,0) DEFAULT 0,  
   "BO_RNO" number(6,0) NOT NULL ENABLE,
   "BO_WRITEDAY" DATE DEFAULT sysdate,
   "BO_CONTENT" VARCHAR2(500 BYTE),
   "BO_WRITER" VARCHAR2(20 BYTE),
   "BO_GROUPS" NUMBER(6,0) DEFAULT 0, 
   "BO_STEP" NUMBER(6,0) DEFAULT 0, 
   "BO_INDENT" NUMBER(6,0) DEFAULT 0, 
    CONSTRAINT "BOREPLY_PK" PRIMARY KEY ("BO_RNO")
  );
 CREATE SEQUENCE BO_RNO_SEQ;

 */