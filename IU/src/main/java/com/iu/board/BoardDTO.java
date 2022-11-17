package com.iu.board;

public class BoardDTO {
   int BO_NO;
   String BO_TITLE,BO_WRITEDAY,BO_CONTENT,BO_PICTURE,BO_WRITER;
   int BO_READCNT,BO_LIKE,RECNT;
   public BoardDTO() {}
public BoardDTO(int bO_NO, String bO_TITLE, String bO_WRITEDAY, String bO_CONTENT, String bO_PICTURE, String bO_WRITER,
		int bO_READCNT, int bO_LIKE, int rECNT) {
	super();
	BO_NO = bO_NO;
	BO_TITLE = bO_TITLE;
	BO_WRITEDAY = bO_WRITEDAY;
	BO_CONTENT = bO_CONTENT;
	BO_PICTURE = bO_PICTURE;
	BO_WRITER = bO_WRITER;
	BO_READCNT = bO_READCNT;
	BO_LIKE = bO_LIKE;
	RECNT = rECNT;
}
public int getBO_NO() {
	return BO_NO;
}
public void setBO_NO(int bO_NO) {
	BO_NO = bO_NO;
}
public String getBO_TITLE() {
	return BO_TITLE;
}
public void setBO_TITLE(String bO_TITLE) {
	BO_TITLE = bO_TITLE;
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
public String getBO_PICTURE() {
	return BO_PICTURE;
}
public void setBO_PICTURE(String bO_PICTURE) {
	BO_PICTURE = bO_PICTURE;
}
public String getBO_WRITER() {
	return BO_WRITER;
}
public void setBO_WRITER(String bO_WRITER) {
	BO_WRITER = bO_WRITER;
}
public int getBO_READCNT() {
	return BO_READCNT;
}
public void setBO_READCNT(int bO_READCNT) {
	BO_READCNT = bO_READCNT;
}
public int getBO_LIKE() {
	return BO_LIKE;
}
public void setBO_LIKE(int bO_LIKE) {
	BO_LIKE = bO_LIKE;
}
public int getRECNT() {
	return RECNT;
}
public void setRECNT(int rECNT) {
	RECNT = rECNT;
}
}

/*
 CREATE TABLE "BOARD" 
   (   "BO_NO" NUMBER(6,0) NOT NULL ENABLE,  
   "BO_TITLE" VARCHAR2(50 BYTE),
   "BO_WRITEDAY" DATE DEFAULT sysdate, 
   "BO_CONTENT" VARCHAR2(500 BYTE),
    "BO_PICTURE" VARCHAR2(800 BYTE),
    "BO_WRITER" VARCHAR2(20 BYTE),
   "BO_READCNT" NUMBER(6,0) DEFAULT 0, 
   "BO_LIKE" NUMBER(6,0) DEFAULT 0, 
   "RECNT" NUMBER(6,0) DEFAULT 0, 
    CONSTRAINT "BOARD_PK" PRIMARY KEY ("BO_NO")
  );
CREATE SEQUENCE BO_NO_SEQ;
*/
//게시판 좋아요
/*
CREATE TABLE "BO_LIKE" 
("LI_NO" NUMBER(6,0) NOT NULL ENABLE,  
"BO_NO" NUMBER(6,0) DEFAULT 0, 
"MEM_NICKNAME" VARCHAR2(30 BYTE),
"LIKECHECK" NUMBER(6,0) DEFAULT 0,
 CONSTRAINT "BO_LIKE" PRIMARY KEY ("LI_NO")
);
 CREATE SEQUENCE LI_NO_SEQ;
*/