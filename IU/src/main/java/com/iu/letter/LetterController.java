package com.iu.letter;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iu.notice.NoticeDTO;
import com.iu.notice.NtPageDTO;
import com.iu.notice.ServiceNotice;



@Controller
public class LetterController 
{
	@Autowired
	SqlSession sqlSession;
	//편지입력
	@RequestMapping(value = "/linput")
	public String linput() {
		return "/letter/linput";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/linputsave")
	public String linputsave(HttpServletRequest request) {
		ServiceLetter sl = sqlSession.getMapper(ServiceLetter.class);
		String LT_TITLE = request.getParameter("LT_TITLE");
		String LT_CONTENT = request.getParameter("LT_CONTENT");
		String LT_WRITER = request.getParameter("LT_WRITER");
		sl.linputdata(LT_TITLE,LT_CONTENT,LT_WRITER);
		return "redirect:lpage";
	}
	//편지출력
	@RequestMapping(value = "lout")
	public String lout(Model mo) {
		ServiceLetter sl = sqlSession.getMapper(ServiceLetter.class);
		ArrayList<LetterDTO> list = sl.lout();
		mo.addAttribute("list",list);
		return "/letter/lout";
	}
	//편지디테일
	@RequestMapping(value = "/ldetail")
	public String ntdetail(HttpServletRequest request,Model mo) {
		int LT_NO = Integer.parseInt(request.getParameter("LT_NO"));
		ServiceLetter sl = sqlSession.getMapper(ServiceLetter.class);
		LetterDTO dto = sl.ldetail(LT_NO);
		mo.addAttribute("list",dto);
		return "/letter/ldetail";
	}
	//편지삭제
	@RequestMapping(value = "/ldelete")
	public String ldelete(HttpServletRequest request) {
		int LT_NO = Integer.parseInt(request.getParameter("LT_NO"));
		ServiceLetter sl = sqlSession.getMapper(ServiceLetter.class);
		sl.ldelete(LT_NO);
		return "redirect:lpage";
	}
	
	/*
	//편지수정
	@RequestMapping(value = "/lmodify")
	public String lmodify(HttpServletRequest request, Model mo) {
		int LT_NO = Integer.parseInt(request.getParameter("LT_NO"));
		ServiceLetter sl = sqlSession.getMapper(ServiceLetter.class);
		ArrayList<LetterDTO> alist = sl.lmodify(LT_NO);
		mo.addAttribute("list",alist);
		return "/letter/lmodify";
	}
	//편지수정입력
	@RequestMapping(method = RequestMethod.POST, value = "lmodifydata")
	public String lmodifydata(HttpServletRequest request) {
		ServiceLetter sl = sqlSession.getMapper(ServiceLetter.class);
		int LT_NO = Integer.parseInt(request.getParameter("LT_NO"));
		String LT_TITLE = request.getParameter("LT_TITLE");
		String LT_WRITEDAY = request.getParameter("LT_WRITEDAY");
		String LT_CONTENT = request.getParameter("LT_CONTENT");
		String LT_WRITER = request.getParameter("LT_WRITER");
		sl.lmodifydata(LT_NO,LT_TITLE,LT_WRITEDAY,LT_CONTENT,LT_WRITER);
		return "redirect:lpage";
	}
	*/
	
	//편지페이징출력
	@RequestMapping(value = "/lpage")
	public String lpage(HttpServletRequest request, LtPageDTO dto, Model mo) {
		  String nowPage=request.getParameter("nowPage");
	      String cntPerPage=request.getParameter("cntPerPage");
	      ServiceLetter sl = sqlSession.getMapper(ServiceLetter.class);
	      int total = sl.cntpage();
	      if(nowPage == null && cntPerPage == null) {
	    	  nowPage="1";
	    	  cntPerPage="5";
	      }
	      else if(nowPage == null) {
	    	  nowPage="1";
	      }
	      else if(cntPerPage == null) {
	    	  cntPerPage="5";
	      }
	      dto = new LtPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
	      mo.addAttribute("paging",dto);
	      mo.addAttribute("view",sl.selectpage(dto));
	      return "/letter/lpage";
	}
}
