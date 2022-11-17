package com.iu.board;

import java.util.ArrayList;

public interface ServiceBoard 
{
	//����
	public void boinput(String b_TITLE, String b_CONTENT, String b_PICTURE, String b_WRITER);
	
	//���
	public ArrayList<BoardDTO> boout();
	
	//�� detail,��ȸ��
	public BoardDTO bodetail(int BO_NO);
	public void readcntup(int BO_NO);
	
	//����
	public ArrayList<BoardDTO> bomodify(int BO_NO);
	public void boupdate(int BO_NO,String BO_TITLE,String BO_WRITEDAY,String BO_CONTENT,String BO_PICTURE,String BO_WRITER,int BO_READCNT);
	
	//����
	public ArrayList<BoardDTO> bodeleteui(int BO_NO);
	public void bodelete(int BO_NO);
	
	//�˻�
	public ArrayList<BoardDTO> botitlesearch(String svalue);
	public ArrayList<BoardDTO> bowritersearch(String svalue);
	
	//����¡
	public int cntpage();
	public ArrayList<BoardDTO> selectpage(BoPageDTO dt);
	
	
	// ��� �Է�
	public void boreplysave(int BO_NO,String writer,String content);
	// ��� ��ȸ
	public ArrayList<BoReplyDTO> boreplylist(int BO_NO);
	
	
	//��ۻ���
	public int boredelete(int BO_rNO);
	public int bono(int BO_RNO);
	
	
	//���� �ۼ�
	public void borereply(int bO_NO, String rWRITER, String rCONTENT, int bO_GROUPS, int bO_STEP, int bO_INDENT);
	//���� ���
	public void bomakereply(int bO_GROUPS, int bO_STEP);
	
	//��õ ����
	public void insertLike(int BO_NO,String MEM_NICKNAME);
	//��õ ������Ʈ (���� ����)
	public void updateLike(int bO_NO);
	//��õ �ߺ�����
	public int LikeCheck(int bO_NO, String mEM_NICKNAME);
	//��õ ���
	public void UpdateLikeCancle(int BO_NO);
	//��õ ����
	public void deleteLike(int BO_NO,String mEM_NICKNAME);
	//��� ���� ���̱�
	public void recnt(int bO_NO);
	//��� ������ ������ ����
	public void recntdown(int bO_NO);

	public ArrayList<BoReplyDTO> UpdateForm(int bO_RNO);

	public void ReUpdateForm(int bO_NO, int bO_RNO, String bO_WRITEDAY, String bO_CONTENT, String bO_WRITER,
			int bO_GROUPS, int bO_STEP, int bO_INDENT);
}
