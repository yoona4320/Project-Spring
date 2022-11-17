package com.iu.photo;

public class PhotoDTO 
{
	int PT_NO;
	String PT_TITLE,PT_WRITEDAY,PT_CONTENT,PT_PICTURE,PT_WRITER;
	int PT_READCNT,PT_LIKE,RECNT;
	public PhotoDTO() {}
	public PhotoDTO(int pT_NO, String pT_TITLE, String pT_WRITEDAY, String pT_CONTENT, String pT_PICTURE,
			String pT_WRITER, int pT_READCNT, int pT_LIKE, int rECNT) {
		super();
		PT_NO = pT_NO;
		PT_TITLE = pT_TITLE;
		PT_WRITEDAY = pT_WRITEDAY;
		PT_CONTENT = pT_CONTENT;
		PT_PICTURE = pT_PICTURE;
		PT_WRITER = pT_WRITER;
		PT_READCNT = pT_READCNT;
		PT_LIKE = pT_LIKE;
		RECNT = rECNT;
	}
	public int getPT_NO() {
		return PT_NO;
	}
	public void setPT_NO(int pT_NO) {
		PT_NO = pT_NO;
	}
	public String getPT_TITLE() {
		return PT_TITLE;
	}
	public void setPT_TITLE(String pT_TITLE) {
		PT_TITLE = pT_TITLE;
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
	public String getPT_PICTURE() {
		return PT_PICTURE;
	}
	public void setPT_PICTURE(String pT_PICTURE) {
		PT_PICTURE = pT_PICTURE;
	}
	public String getPT_WRITER() {
		return PT_WRITER;
	}
	public void setPT_WRITER(String pT_WRITER) {
		PT_WRITER = pT_WRITER;
	}
	public int getPT_READCNT() {
		return PT_READCNT;
	}
	public void setPT_READCNT(int pT_READCNT) {
		PT_READCNT = pT_READCNT;
	}
	public int getPT_LIKE() {
		return PT_LIKE;
	}
	public void setPT_LIKE(int pT_LIKE) {
		PT_LIKE = pT_LIKE;
	}
	public int getRECNT() {
		return RECNT;
	}
	public void setRECNT(int rECNT) {
		RECNT = rECNT;
	}

}
/*
CREATE TABLE "PHOTO" 
(   "PT_NO" NUMBER(6,0) NOT NULL ENABLE,  
"PT_TITLE" VARCHAR2(50 BYTE),
"PT_WRITEDAY" DATE DEFAULT sysdate, 
"PT_CONTENT" VARCHAR2(500 BYTE),
"PT_PICTURE" VARCHAR2(800 BYTE),
"PT_WRITER" VARCHAR2(20 BYTE),
"PT_READCNT" NUMBER(6,0) DEFAULT 0, 
"PT_LIKE" NUMBER(6,0) DEFAULT 0, 
"RECNT" NUMBER(6,0) DEFAULT 0, 
 CONSTRAINT "PHOTO_PK" PRIMARY KEY ("PT_NO")
);
CREATE SEQUENCE PT_NO_SEQ;  
*/
//포토 좋아요
/*
CREATE TABLE "PT_LIKE" 
("PLI_NO" NUMBER(6,0) NOT NULL ENABLE,  
"PT_NO" NUMBER(6,0) DEFAULT 0, 
"MEM_NICKNAME" VARCHAR2(30 BYTE),
"LIKECHECK" NUMBER(6,0) DEFAULT 0,
 CONSTRAINT "PT_LIKE" PRIMARY KEY ("PLI_NO")
);
 CREATE SEQUENCE PLI_NO_SEQ; 
 */  
