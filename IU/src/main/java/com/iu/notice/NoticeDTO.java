package com.iu.notice;

public class NoticeDTO {
	int NT_NO;
	String NT_WRITEDAY,NT_TITLE,NT_CONTENT,NT_WRITER;
	int NT_READCNT;
	public NoticeDTO() {}
	
	
	public NoticeDTO(int nT_NO, String nT_WRITEDAY, String nT_TITLE, String nT_CONTENT, String nT_WRITER,
			int nT_READCNT) {
		super();
		NT_NO = nT_NO;
		NT_WRITEDAY = nT_WRITEDAY;
		NT_TITLE = nT_TITLE;
		NT_CONTENT = nT_CONTENT;
		NT_WRITER = nT_WRITER;
		NT_READCNT = nT_READCNT;
	}


	public int getNT_NO() {
		return NT_NO;
	}
	public void setNT_NO(int nT_NO) {
		NT_NO = nT_NO;
	}
	public String getNT_WRITEDAY() {
		return NT_WRITEDAY;
	}
	public void setNT_WRITEDAY(String nT_WRITEDAY) {
		NT_WRITEDAY = nT_WRITEDAY;
	}
	public String getNT_TITLE() {
		return NT_TITLE;
	}
	public void setNT_TITLE(String nT_TITLE) {
		NT_TITLE = nT_TITLE;
	}
	public String getNT_CONTENT() {
		return NT_CONTENT;
	}
	public void setNT_CONTENT(String nT_CONTENT) {
		NT_CONTENT = nT_CONTENT;
	}
	public int getNT_READCNT() {
		return NT_READCNT;
	}
	public void setNT_READCNT(int nT_READCNT) {
		NT_READCNT = nT_READCNT;
	}


	public String getNT_WRITER() {
		return NT_WRITER;
	}


	public void setNT_WRITER(String nT_WRITER) {
		NT_WRITER = nT_WRITER;
	}
	
	
}
/*
CREATE TABLE "NOTICE"
("NT_NO" NUMBER(6,0) NOT NULL ENABLE,
"NT_WRITEDAY" DATE DEFAULT sysdate,
"NT_TITLE" VARCHAR2(50 BYTE),
"NT_CONTENT" VARCHAR2(500 BYTE),
"NT_WRITER" VARCHAR2(50 BYTE),
"NT_READCNT" NUMBER(6,0) DEFAULT 0,
CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NT_NO"));
*/

