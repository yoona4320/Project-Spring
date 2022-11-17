package com.iu.notice;

import java.util.ArrayList;

public interface ServiceNotice 
{
	//저장
	public void ntinputdata(String nT_TITLE, String nT_CONTENT, String nT_WRITER);
	
	//출력
	public ArrayList<NoticeDTO> ntout();
	
	//detail,조회수
	public NoticeDTO ntdetail(int nT_NO);
    public void readcntup(int nT_NO);
	
    //삭제
    public void ntdelete(int nT_NO);
	
    //페이징처리
	public int cntpage();
	public ArrayList<NoticeDTO> selectpage(NtPageDTO dto); //페이징처리
	
	//수정
	public ArrayList<NoticeDTO> ntmodify(int nT_NO);
	public void ntmodifydata(int nT_NO, String NT_WRITEDAY, String nT_TITLE, String nT_CONTENT, int nT_READCNT,String nT_WRITER);
	
	//검색
	public ArrayList<NoticeDTO> nttitlesearch(String svalue);
	
}
