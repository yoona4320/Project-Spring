package com.iu.board;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@RestController
public class BoRController 
{
	@Autowired
	   SqlSession sqlSession;
	   
	   @ResponseBody
	   @RequestMapping(value = "/updateLike" , method = RequestMethod.POST)
	      public int jjoinsave(HttpServletRequest request) throws Exception 
	      {
		   		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		   		
		   		int BO_NO = Integer.parseInt(request.getParameter("BO_NO"));
		   		String MEM_NICKNAME=request.getParameter("MEM_NICKNAME");
		   		int LikeCheck = sb.LikeCheck(BO_NO, MEM_NICKNAME);
	            
		   		System.out.println("��ȣ :"+BO_NO);
	            System.out.println("�г��� : " +MEM_NICKNAME);
	            System.out.println("�ߺ�����: "+LikeCheck);
	            
	            if(LikeCheck==0)
	            {
	            	sb.insertLike(BO_NO,MEM_NICKNAME);	//����
	            	sb.updateLike(BO_NO);				//���� ���� (update)
	            }
	            else if(LikeCheck==1)
	            {
	            	sb.UpdateLikeCancle(BO_NO);
	            	sb.deleteLike(BO_NO, MEM_NICKNAME);
	            }
	            		
	         return LikeCheck;
	      }

	
}
