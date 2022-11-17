package com.iu.member;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.iu.board.BoardDTO;



@Controller
public class MemberController 
{
	@Autowired
	SqlSession sqlSession;
	
	//회원가입
	@RequestMapping(value="/input")
	public String input1()
	{
		return "/member/input";
	}
	
	//회원가입폼
	@RequestMapping(method = RequestMethod.POST,  value="/inputsave")
	public String inputsave(HttpServletRequest request)
	{
		ServiceMember sm = sqlSession.getMapper(ServiceMember.class);
		String MEM_ID = request.getParameter("MEM_ID");
		String MEM_PW = request.getParameter("MEM_PW");
		String MEM_NAME = request.getParameter("MEM_NAME");
		String MEM_NICKNAME = request.getParameter("MEM_NICKNAME");
		String MEM_SB = request.getParameter("MEM_SB");
		String MEM_BIRTH = request.getParameter("MEM_BIRTH");
		String MEM_EMAIL = request.getParameter("MEM_EMAIL");
		String MEM_ADDRESS = request.getParameter("MEM_ADDRESS");
		String MEM_TEL = request.getParameter("MEM_TEL");
		
		sm.inputdata(MEM_ID,MEM_PW,MEM_NAME,MEM_NICKNAME,MEM_SB,MEM_BIRTH,MEM_EMAIL,MEM_ADDRESS,MEM_TEL);
		return "redirect:index";
	}
	//로그인폼
	@RequestMapping(value = "/login")
	public String loginform1() {
		return "loginform";
	}
	//로그인
	@RequestMapping(method = RequestMethod.POST, value = "/loginsave")
	public ModelAndView login(HttpServletRequest request,Model mo,RedirectAttributes ra) {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO;
		String MEM_ID = request.getParameter("MEM_ID");
		String MEM_PW = request.getParameter("MEM_PW");
		ServiceMember sm = sqlSession.getMapper(ServiceMember.class);
		String MEM_NICKNAME = sm.detail(MEM_ID);
		memberDTO = sm.login(MEM_ID,MEM_PW);
		HttpSession hs = request.getSession();
		if(memberDTO != null)
		{
			hs.setAttribute("MEM_NICKNAME", MEM_NICKNAME);
			hs.setAttribute("member", memberDTO);
			hs.setAttribute("loginOn", true);
			mv.setViewName("redirect:index");
		}
		else
		{
			ra.addAttribute("result","fail");
			mv.setViewName("redirect:loginform");		
		}
		return mv;
	}
	//로그아웃
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession hs = request.getSession();
		hs.removeAttribute("member");
		hs.removeAttribute("loginOn");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:index");
		return mv;
	}
	@RequestMapping(method=RequestMethod.GET, value="/*form")
	private ModelAndView form(@RequestParam(value="result", required=false) String result, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName(viewName);
		return mv;
	}
	
	
}
