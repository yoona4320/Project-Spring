package com.iu.photo;

import java.util.ArrayList;
import java.util.List;

import com.iu.board.BoPageDTO;
import com.iu.board.BoReplyDTO;
import com.iu.board.BoardDTO;

public interface ServicePhoto {

	//저장
	public void ptinputdata(String pT_TITLE, String pT_CONTENT, String pT_PICTURE, String pT_WRITER);
	
	//출력
	public ArrayList<PhotoDTO> ptout();
	
	//detail
	public PhotoDTO ptdetail(int pT_NO);
	//조회수
	public void readcntup(int pT_NO);

	//업데이트 ui
	public ArrayList<PhotoDTO> ptmodify(int PT_NO);
	//업데이트 저장
	public void ptupdate(int PT_NO,String PT_TITLE,String PT_WRITEDAY,String PT_CONTENT,String PT_PICTURE,String PT_WRITER,int PT_READCNT);
	
	//삭제 ui
	public ArrayList<PhotoDTO> ptdeleteui(int PT_NO);
	//삭제 저장
	public void ptdelete(int PT_NO);
	
	//검색
	public ArrayList<PhotoDTO> pttitlesearch(String svalue);
	public ArrayList<PhotoDTO> ptwritersearch(String svalue);
	
	//페이징
	public int cntpage();
	public ArrayList<PhotoDTO> selectpage(PtPageDTO dt);
	
	//댓글 입력
	public void ptreplysave(int PT_NO,String writer,String content);
	//댓글 조회
	public ArrayList<PtReplyDTO> ptreplylist(int PT_NO);
	
	//댓글삭제
	public int ptredelete(int PT_rNO);
	public int ptno(int PT_RNO);
		
	//대댓글 작성
	public void ptrereply(int PT_NO, String rWRITER, String rCONTENT, int PT_GROUPS, int PT_STEP, int PT_INDENT);
	//대댓글 출력
	public void ptmakereply(int PT_GROUPS, int PT_STEP);

	//추천 저장
	public void insertLike(int PT_NO,String MEM_NICKNAME);
	//추천 업데이트 (숫자 증가)
	public void updateLike(int PT_NO);
	//추천 중복방지
	public int LikeCheck(int PT_NO, String mEM_NICKNAME);
	//추천 취소
	public void UpdateLikeCancle(int PT_NO);
	//추천 삭제
	public void deleteLike(int PT_NO,String mEM_NICKNAME);

	public void PTReUpdateForm(int pT_NO, int pT_RNO, String pT_WRITEDAY, String pT_CONTENT, String pT_WRITER);

	public void recnt(int pT_NO);

	public void recntdown(int pT_NO);
}
