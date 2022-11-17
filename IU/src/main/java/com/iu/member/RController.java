package com.iu.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class RController 
{
	@Autowired
	SqlSession sqlSession;
	
	@ResponseBody
	@RequestMapping(value="/IdChk")
	public int idcheck(@RequestParam("MEM_ID")String id) 
	{
		ServiceMember sm = sqlSession.getMapper(ServiceMember.class);
		int result = sm.idcheck(id);
		
		System.out.println("id값: "+id);
		System.out.println("result값: "+result);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/NickChk")
	public int nicknamecheck(@RequestParam("MEM_NICKNAME")String nick)
	{
		ServiceMember sm = sqlSession.getMapper(ServiceMember.class);
		int result2 = sm.niccheck(nick);
		
		System.out.println("nick값: "+nick);
		System.out.println("result2값: "+result2);
		
		return result2;
	}
	
}
