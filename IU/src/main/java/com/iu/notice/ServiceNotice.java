package com.iu.notice;

import java.util.ArrayList;

public interface ServiceNotice 
{
	//����
	public void ntinputdata(String nT_TITLE, String nT_CONTENT, String nT_WRITER);
	
	//���
	public ArrayList<NoticeDTO> ntout();
	
	//detail,��ȸ��
	public NoticeDTO ntdetail(int nT_NO);
    public void readcntup(int nT_NO);
	
    //����
    public void ntdelete(int nT_NO);
	
    //����¡ó��
	public int cntpage();
	public ArrayList<NoticeDTO> selectpage(NtPageDTO dto); //����¡ó��
	
	//����
	public ArrayList<NoticeDTO> ntmodify(int nT_NO);
	public void ntmodifydata(int nT_NO, String NT_WRITEDAY, String nT_TITLE, String nT_CONTENT, int nT_READCNT,String nT_WRITER);
	
	//�˻�
	public ArrayList<NoticeDTO> nttitlesearch(String svalue);
	
}
