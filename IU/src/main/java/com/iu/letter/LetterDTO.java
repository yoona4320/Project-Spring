package com.iu.letter;

public class LetterDTO {
	int LT_NO;
	String LT_TITLE,LT_WRITEDAY,LT_CONTENT,LT_WRITER;
	public LetterDTO() {}
	public LetterDTO(int lT_NO, String lT_TITLE, String lT_WRITEDAY, String lT_CONTENT, String lT_WRITER) {
		super();
		LT_NO = lT_NO;
		LT_TITLE = lT_TITLE;
		LT_WRITEDAY = lT_WRITEDAY;
		LT_CONTENT = lT_CONTENT;
		LT_WRITER = lT_WRITER;
	}
	public int getLT_NO() {
		return LT_NO;
	}
	public void setLT_NO(int lT_NO) {
		LT_NO = lT_NO;
	}
	public String getLT_TITLE() {
		return LT_TITLE;
	}
	public void setLT_TITLE(String lT_TITLE) {
		LT_TITLE = lT_TITLE;
	}
	public String getLT_WRITEDAY() {
		return LT_WRITEDAY;
	}
	public void setLT_WRITEDAY(String lT_WRITEDAY) {
		LT_WRITEDAY = lT_WRITEDAY;
	}
	public String getLT_CONTENT() {
		return LT_CONTENT;
	}
	public void setLT_CONTENT(String lT_CONTENT) {
		LT_CONTENT = lT_CONTENT;
	}
	public String getLT_WRITER() {
		return LT_WRITER;
	}
	public void setLT_WRITER(String lT_WRITER) {
		LT_WRITER = lT_WRITER;
	}

}
/*
CREATE TABLE "LETTER" 
(   "LT_NO" NUMBER(6,0) NOT NULL ENABLE,  
"LT_TITLE" VARCHAR2(50 BYTE),
"LT_WRITEDAY" DATE DEFAULT sysdate, 
"LT_CONTENT" VARCHAR2(500 BYTE),
"LT_WRITER" VARCHAR2(20 BYTE),
 CONSTRAINT "LETTER_PK" PRIMARY KEY ("LT_NO")
);
CREATE SEQUENCE LT_NO_SEQ;  
*/
