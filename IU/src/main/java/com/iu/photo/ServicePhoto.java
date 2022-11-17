package com.iu.photo;

import java.util.ArrayList;
import java.util.List;

import com.iu.board.BoPageDTO;
import com.iu.board.BoReplyDTO;
import com.iu.board.BoardDTO;

public interface ServicePhoto {

	//����
	public void ptinputdata(String pT_TITLE, String pT_CONTENT, String pT_PICTURE, String pT_WRITER);
	
	//���
	public ArrayList<PhotoDTO> ptout();
	
	//detail
	public PhotoDTO ptdetail(int pT_NO);
	//��ȸ��
	public void readcntup(int pT_NO);

	//������Ʈ ui
	public ArrayList<PhotoDTO> ptmodify(int PT_NO);
	//������Ʈ ����
	public void ptupdate(int PT_NO,String PT_TITLE,String PT_WRITEDAY,String PT_CONTENT,String PT_PICTURE,String PT_WRITER,int PT_READCNT);
	
	//���� ui
	public ArrayList<PhotoDTO> ptdeleteui(int PT_NO);
	//���� ����
	public void ptdelete(int PT_NO);
	
	//�˻�
	public ArrayList<PhotoDTO> pttitlesearch(String svalue);
	public ArrayList<PhotoDTO> ptwritersearch(String svalue);
	
	//����¡
	public int cntpage();
	public ArrayList<PhotoDTO> selectpage(PtPageDTO dt);
	
	//��� �Է�
	public void ptreplysave(int PT_NO,String writer,String content);
	//��� ��ȸ
	public ArrayList<PtReplyDTO> ptreplylist(int PT_NO);
	
	//��ۻ���
	public int ptredelete(int PT_rNO);
	public int ptno(int PT_RNO);
		
	//���� �ۼ�
	public void ptrereply(int PT_NO, String rWRITER, String rCONTENT, int PT_GROUPS, int PT_STEP, int PT_INDENT);
	//���� ���
	public void ptmakereply(int PT_GROUPS, int PT_STEP);

	//��õ ����
	public void insertLike(int PT_NO,String MEM_NICKNAME);
	//��õ ������Ʈ (���� ����)
	public void updateLike(int PT_NO);
	//��õ �ߺ�����
	public int LikeCheck(int PT_NO, String mEM_NICKNAME);
	//��õ ���
	public void UpdateLikeCancle(int PT_NO);
	//��õ ����
	public void deleteLike(int PT_NO,String mEM_NICKNAME);

	public void PTReUpdateForm(int pT_NO, int pT_RNO, String pT_WRITEDAY, String pT_CONTENT, String pT_WRITER);

	public void recnt(int pT_NO);

	public void recntdown(int pT_NO);
}
