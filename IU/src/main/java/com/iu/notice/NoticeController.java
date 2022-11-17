package com.iu.notice;


import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;


import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iu.board.BoardDTO;
import com.iu.board.ServiceBoard;



@Controller
public class NoticeController 
{
	@Autowired
	SqlSession sqlSession;
	//���������Է�
	@RequestMapping(value = "/ntinput")
	public String ntinput() {
		return "/notice/ntinput";
	}
	@RequestMapping(method = RequestMethod.POST,  value="/ntinputsave")
	public String ntinputsave(HttpServletRequest request)
	{
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		String NT_TITLE = request.getParameter("NT_TITLE");
		String NT_CONTENT = request.getParameter("NT_CONTENT");
		String NT_WRITER = request.getParameter("NT_WRITER");
		sn.ntinputdata(NT_TITLE,NT_CONTENT,NT_WRITER);
		return "redirect:ntpage";
	}
	//�����������
	@RequestMapping(value ="ntout")
	public String ntout(Model mo) {
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		ArrayList<NoticeDTO> list = sn.ntout();
		mo.addAttribute("list",list);
		return "/notice/ntout";		
	}
	//�������׵�����
	@RequestMapping(value = "/ntdetail")
	public String ntdetail(HttpServletRequest request,Model mo) {
		int NT_NO = Integer.parseInt(request.getParameter("NT_NO"));
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		readcntup(NT_NO);
		NoticeDTO dto = sn.ntdetail(NT_NO);
		mo.addAttribute("list",dto);
		return "/notice/ntdetail";
	}
	//��ȸ��
	public void readcntup(int NT_NO){
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		sn.readcntup(NT_NO);
	}
	//�������׻���
	@RequestMapping(value = "/ntdelete")
	public String ntdelete(HttpServletRequest request) {
		int NT_NO = Integer.parseInt(request.getParameter("NT_NO"));
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		sn.ntdelete(NT_NO);
		return "redirect:ntpage";
	}
	//�������׼���
	@RequestMapping(value = "/ntmodify")
	public String ntmodify(HttpServletRequest request, Model mo) {
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		int NT_NO = Integer.parseInt(request.getParameter("NT_NO"));
		ArrayList<NoticeDTO> alist = sn.ntmodify(NT_NO);
		mo.addAttribute("list",alist);
		return "/notice/ntmodify";
	}
	//�������׼����Է�
	@RequestMapping(method = RequestMethod.POST, value = "ntmodifydata")
	public String ntmodifydata(HttpServletRequest request) {
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		int NT_NO = Integer.parseInt(request.getParameter("NT_NO"));
		String NT_WRITEDAY = request.getParameter("NT_WRITEDAY");
		int NT_READCNT = Integer.parseInt(request.getParameter("NT_READCNT"));
		String NT_TITLE = request.getParameter("NT_TITLE");
		String NT_CONTENT = request.getParameter("NT_CONTENT");
		String NT_WRITER = request.getParameter("NT_WRITER");
		sn.ntmodifydata(NT_NO,NT_WRITEDAY,NT_TITLE,NT_CONTENT,NT_READCNT,NT_WRITER);
		return "redirect:ntpage";
	}
	
	//������������¡ó��
	@RequestMapping(value = "/ntpage")
	public String ntpage(HttpServletRequest request, NtPageDTO dto, Model mo){
		  String nowPage=request.getParameter("nowPage");
	      String cntPerPage=request.getParameter("cntPerPage");
	      ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
	      int total = sn.cntpage();
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
	      dto = new NtPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
	      mo.addAttribute("paging",dto);
	      mo.addAttribute("list",sn.selectpage(dto));
	      return "/notice/ntpage";
	} 
	
	//�˻�
	@RequestMapping(value="/ntsearch")
	public String ntsearch(HttpServletRequest request,Model mo)
	{
		String sname=request.getParameter("sname");
		String svalue=request.getParameter("svalue");
		ServiceNotice sn = sqlSession.getMapper(ServiceNotice.class);
		ArrayList<NoticeDTO> list = null;
		
		if(sname.equals("NT_TITLE"))
		{
			list = sn.nttitlesearch(svalue);
		}
		
		mo.addAttribute("list",list);
		
		return "/notice/ntpage";
	}
		
}
