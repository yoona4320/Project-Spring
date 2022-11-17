package com.iu.board;

import java.util.ArrayList;

public interface ServiceBoard 
{
	//저장
	public void boinput(String b_TITLE, String b_CONTENT, String b_PICTURE, String b_WRITER);
	
	//출력
	public ArrayList<BoardDTO> boout();
	
	//상세 detail,조회수
	public BoardDTO bodetail(int BO_NO);
	public void readcntup(int BO_NO);
	
	//수정
	public ArrayList<BoardDTO> bomodify(int BO_NO);
	public void boupdate(int BO_NO,String BO_TITLE,String BO_WRITEDAY,String BO_CONTENT,String BO_PICTURE,String BO_WRITER,int BO_READCNT);
	
	//삭제
	public ArrayList<BoardDTO> bodeleteui(int BO_NO);
	public void bodelete(int BO_NO);
	
	//검색
	public ArrayList<BoardDTO> botitlesearch(String svalue);
	public ArrayList<BoardDTO> bowritersearch(String svalue);
	
	//페이징
	public int cntpage();
	public ArrayList<BoardDTO> selectpage(BoPageDTO dt);
	
	
	// 댓글 입력
	public void boreplysave(int BO_NO,String writer,String content);
	// 댓글 조회
	public ArrayList<BoReplyDTO> boreplylist(int BO_NO);
	
	
	//댓글삭제
	public int boredelete(int BO_rNO);
	public int bono(int BO_RNO);
	
	
	//대댓글 작성
	public void borereply(int bO_NO, String rWRITER, String rCONTENT, int bO_GROUPS, int bO_STEP, int bO_INDENT);
	//대댓글 출력
	public void bomakereply(int bO_GROUPS, int bO_STEP);
	
	//추천 저장
	public void insertLike(int BO_NO,String MEM_NICKNAME);
	//추천 업데이트 (숫자 증가)
	public void updateLike(int bO_NO);
	//추천 중복방지
	public int LikeCheck(int bO_NO, String mEM_NICKNAME);
	//추천 취소
	public void UpdateLikeCancle(int BO_NO);
	//추천 삭제
	public void deleteLike(int BO_NO,String mEM_NICKNAME);
	//댓글 갯수 보이기
	public void recnt(int bO_NO);
	//댓글 삭제시 갯수도 삭제
	public void recntdown(int bO_NO);

	public ArrayList<BoReplyDTO> UpdateForm(int bO_RNO);

	public void ReUpdateForm(int bO_NO, int bO_RNO, String bO_WRITEDAY, String bO_CONTENT, String bO_WRITER,
			int bO_GROUPS, int bO_STEP, int bO_INDENT);
}
