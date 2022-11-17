package com.iu.photo;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class PtRController 
{
	@Autowired
	   SqlSession sqlSession;
	   
	   @ResponseBody
	   @RequestMapping(value = "/PTLike" , method = RequestMethod.POST)
	      public int jjoinsave(HttpServletRequest request) throws Exception 
	      {
		   		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		   		
		   		int PT_NO = Integer.parseInt(request.getParameter("PT_NO"));
		   		String MEM_NICKNAME=request.getParameter("MEM_NICKNAME");
		   		int LikeCheck = sp.LikeCheck(PT_NO, MEM_NICKNAME);
	            
		   		System.out.println("��ȣ :"+PT_NO);
	            System.out.println("�г��� : " +MEM_NICKNAME);
	            System.out.println("�ߺ�����: "+LikeCheck);
	            
	            if(LikeCheck==0)
	            {
	            	sp.insertLike(PT_NO,MEM_NICKNAME);	//����
	            	sp.updateLike(PT_NO);				//���� ���� (update)
	            }
	            else if(LikeCheck==1)
	            {
	            	sp.UpdateLikeCancle(PT_NO);
	            	sp.deleteLike(PT_NO, MEM_NICKNAME);
	            }
	            		
	         return LikeCheck;
	      }

	
}
