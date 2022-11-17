package com.iu.member;

import java.util.ArrayList;

public interface ServiceMember {

	public void inputdata(String mEM_ID, String mEM_PW, String mEM_NAME, String mEM_NICKNAME, String mEM_SB, String mEM_BIRTH,
			String mEM_EMAIL, String mEM_ADDRESS, String mEM_TEL);
	
    public MemberDTO login(String mEM_ID, String mEM_PW);
    public String detail(String mEM_ID);

	public int idcheck(String id);

	public int niccheck(String nick);
	
}
