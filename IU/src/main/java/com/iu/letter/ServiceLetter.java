package com.iu.letter;

import java.util.ArrayList;

public interface ServiceLetter {

	public void linputdata(String lT_TITLE, String lT_CONTENT, String lT_WRITER);
	public ArrayList<LetterDTO> lout();
	public LetterDTO ldetail(int lT_NO);
	public void ldelete(int lT_NO);
	public ArrayList<LetterDTO> lmodify(int lT_NO);
	public void lmodifydata(int lT_NO, String lT_TITLE, String lT_WRITEDAY, String lT_CONTENT, String lT_WRITER);
	
	public int cntpage();
	public ArrayList<LetterDTO> selectpage(LtPageDTO dto);

}
