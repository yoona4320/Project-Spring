package com.iu.board;


import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.iu.letter.LtPageDTO;
import com.iu.letter.ServiceLetter;
import com.iu.notice.ServiceNotice;


@Controller
public class BoardController 
{
	@Autowired
	SqlSession sqlSession;
	
	//이미지 저장 경로
	private static final String CURR_IMAGE_REPO_PATH = "C:\\Spring\\IU\\src\\main\\webapp\\resources\\saveimage";
	
	
	//입력
	@RequestMapping(value="/boinput")
	public String input()
	{
		return "/board/boinput";
	}
	
	
	//저장
	@RequestMapping(value="/bosave",method=RequestMethod.POST)
	public ModelAndView save(MultipartHttpServletRequest mul, HttpServletRequest response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		String BO_TITLE=mul.getParameter("BO_TITLE");
		String BO_CONTENT=mul.getParameter("BO_CONTENT");
		String BO_WRITER=mul.getParameter("BO_WRITER");
		MultipartFile im=mul.getFile("BO_PICTURE");
		String BO_PICTURE=im.getOriginalFilename();
		
		mul.setCharacterEncoding("utf-8");
		Map map = new HashMap();
		
		List fileList = fileProcess(mul);
		map.put("fileList", fileList);
		
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.boinput(BO_TITLE,BO_CONTENT,BO_PICTURE,BO_WRITER);
		
		mav.setViewName("redirect:bopage");
		return mav;
	}//이미지
	private List<String> fileProcess(MultipartHttpServletRequest mul) throws Exception 
	{
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames=mul.getFileNames();
		
		while(fileNames.hasNext())
		{
			String fileName = fileNames.next();		
			MultipartFile mFile = mul.getFile(fileName);		
			String originalFileName = mFile.getOriginalFilename();
			fileList.add(originalFileName);		//업로드된 파일 목록에 추가
			
			File file = new File(CURR_IMAGE_REPO_PATH+"\\"+fileName);
			mFile.transferTo(new File(CURR_IMAGE_REPO_PATH+"\\"+originalFileName));
		}
		
		return fileList;
	}
	
	
	//출력
	@RequestMapping(value="/boout")
	public String out(Model mo)
	{
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		ArrayList<BoardDTO> list = sb.boout();
		mo.addAttribute("list",list);
	
		return "/board/boout";
	}
	
	
	//detail
	@RequestMapping(value="/bodetail")
	public String detail(HttpServletRequest request,Model mo)
	{
		int BO_NO = Integer.parseInt(request.getParameter("BO_NO"));
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		
		BoardDTO list = sb.bodetail(BO_NO);
		mo.addAttribute("list",list);
		
		ArrayList<BoReplyDTO> reply = sb.boreplylist(BO_NO);
		mo.addAttribute("reply",reply);
				
		readcntup(BO_NO);
		
		return "/board/bodetail";
	}
	//detail1
	@RequestMapping(value="/bodetail1")
	public String detail1(HttpServletRequest request,Model mo)
	{
		int BO_NO = Integer.parseInt(request.getParameter("BO_NO"));
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		
		BoardDTO list = sb.bodetail(BO_NO);
		mo.addAttribute("list",list);
		
		ArrayList<BoReplyDTO> reply = sb.boreplylist(BO_NO);
		mo.addAttribute("reply",reply);
				
		
		
		return "/board/bodetail1";
	}	
	//조회수
	public void readcntup(int BO_NO)
	{
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.readcntup(BO_NO);
	}
	
	
	//업데이트 ui
	@RequestMapping(value="/bomodify")
	public String updateui(HttpServletRequest request,Model mo)
	{
		int BO_NO = Integer.parseInt(request.getParameter("BO_NO"));
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		ArrayList<BoardDTO> list = sb.bomodify(BO_NO);
		mo.addAttribute("list",list);
		
		return "/board/bomodify";
	}
	//업데이트 저장
	@RequestMapping(value="/boupdate")
	public ModelAndView updatesave(HttpServletRequest request,MultipartHttpServletRequest mul) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		int BO_NO = Integer.parseInt(request.getParameter("BO_NO"));
		String BO_TITLE=mul.getParameter("BO_TITLE");
		String BO_WRITEDAY=mul.getParameter("BO_WRITEDAY");
		String BO_CONTENT=mul.getParameter("BO_CONTENT");
		MultipartFile im=mul.getFile("BO_PICTURE");
		String BO_PICTURE=im.getOriginalFilename();
		String BO_WRITER=mul.getParameter("BO_WRITER");
		int BO_READCNT=Integer.parseInt(mul.getParameter("BO_READCNT"));
		
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.boupdate(BO_NO,BO_TITLE,BO_WRITEDAY,BO_CONTENT,BO_PICTURE,BO_WRITER,BO_READCNT);
		
		mul.setCharacterEncoding("utf-8");
		Map map = new HashMap();
		
		List fileList = fileProcess(mul);
		map.put("fileList", fileList);
		
		mav.setViewName("redirect:bopage");
		return mav;
	}
	
	
	//삭제 ui
	@RequestMapping(value="/bodeleteui")
	public String deleteui(HttpServletRequest request,Model mo)
	{
		int BO_NO = Integer.parseInt(request.getParameter("BO_NO"));
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		ArrayList<BoardDTO> list = sb.bodeleteui(BO_NO);
		mo.addAttribute("list",list);
		return "/board/bodeleteui";
	}
	//삭제 저장
	@RequestMapping(value="/bodelete")
	public String delete(HttpServletRequest request)
	{
		int BO_NO = Integer.parseInt(request.getParameter("BO_NO"));
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.bodelete(BO_NO);
		return "redirect:bopage";
	}
	
	
	//페이징
	@RequestMapping(value="/bopage")
	public String page(HttpServletRequest request, BoPageDTO dt,Model mo)
	{
		String nowPage=request.getParameter("nowPage");
	    String cntPerPage=request.getParameter("cntPerPage");
	    ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
	    int total = sb.cntpage();
	    if(nowPage == null && cntPerPage == null) 
	    {
	    	nowPage="1";
	    	cntPerPage="5";
	    }
	    else if(nowPage == null) 
	    {
	    	nowPage="1";
	    }
	    else if(cntPerPage == null) 
	    {
	    	cntPerPage="5";
	    }
	    dt = new BoPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
	    mo.addAttribute("paging",dt);
	    mo.addAttribute("list",sb.selectpage(dt));
	    
	    return "/board/bopage";
	}
	
	
	//댓글 입력
	@RequestMapping(value="/boreply")
	public String reply(HttpServletRequest request)
	{
		int BO_NO=Integer.parseInt(request.getParameter("BO_NO"));
		String writer=request.getParameter("writer");
		String content=request.getParameter("content");
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.boreplysave(BO_NO, writer, content);
		recnt(BO_NO);
		return "redirect:bodetail1?BO_NO=" + BO_NO ;
	}
	public void recnt(int BO_NO)
    {
	    ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
	    sb.recnt(BO_NO);
    }	
	@RequestMapping(value="/borereply",method=RequestMethod.POST)
	public String borereply(HttpServletRequest request)
	{
		int BO_NO=Integer.parseInt(request.getParameter("BO_NO"));
		int BO_GROUPS = Integer.parseInt(request.getParameter("BO_GROUPS"));
		int BO_STEP = Integer.parseInt(request.getParameter("BO_STEP"));
		int BO_INDENT = Integer.parseInt(request.getParameter("BO_INDENT"));
		String RWRITER = request.getParameter("RWRITER");
		String RCONTENT = request.getParameter("RCONTENT").replace("\r\n", "<br>");;
		
		MakeReply(BO_GROUPS,BO_STEP);
		BO_INDENT ++;
		BO_STEP ++;
		
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.borereply(BO_NO, RWRITER, RCONTENT, BO_GROUPS, BO_STEP, BO_INDENT);
		sb.recnt(BO_NO);
		return "redirect:bodetail1?BO_NO=" + BO_NO;
	}
	public void MakeReply(int BO_GROUPS, int BO_STEP) 
	{
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.bomakereply(BO_GROUPS, BO_STEP);
	}


	//댓글삭제
	@RequestMapping(value="/boredelete")
	public String replydelete(HttpServletRequest request)
	{
		BoardDTO dt = new BoardDTO();
		int BO_RNO = Integer.parseInt(request.getParameter("BO_RNO")); 
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		dt.setBO_NO(sb.bono(BO_RNO));
		dt.getBO_NO();
		sb.boredelete(BO_RNO);
		sb.recntdown(dt.getBO_NO());
		return "redirect:bodetail1?BO_NO=" + dt.getBO_NO();
	}
	public void bno(int BO_RNO)
	{
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		sb.bono(BO_RNO);
	}
    public void recntdown(int BO_NO)
    {
	    ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
	    sb.recntdown(BO_NO);
    }	
	
	/**/
	//검색
	@RequestMapping(value="/search")
	public String search(HttpServletRequest request,Model mo)
	{
		String sname=request.getParameter("sname");
		String svalue=request.getParameter("svalue");
		
		ArrayList<BoardDTO> list = null;
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		if(sname.equals("BO_TITLE"))
		{
			list = sb.botitlesearch(svalue);
		}
		else
		{
			list = sb.bowritersearch(svalue);
		}
		
		mo.addAttribute("list",list);
		
		return "/board/bopage";
	}
	
	//댓글수정입력
	@RequestMapping(value="/ReUpdateForm", method = RequestMethod.POST)
	public String reupdateform2(HttpServletRequest request,Model mo)
	{
		
		
		int BO_NO=Integer.parseInt(request.getParameter("BO_NO"));
		int BO_RNO = Integer.parseInt(request.getParameter("BO_RNO"));
		String BO_WRITEDAY=request.getParameter("BO_WRITEDAY");
		String BO_CONTENT=request.getParameter("BO_CONTENT");
		String BO_WRITER=request.getParameter("BO_WRITER");
		int BO_GROUPS = Integer.parseInt(request.getParameter("BO_GROUPS"));
		int BO_STEP = Integer.parseInt(request.getParameter("BO_STEP"));
		int BO_INDENT = Integer.parseInt(request.getParameter("BO_INDENT"));
		ServiceBoard sb = sqlSession.getMapper(ServiceBoard.class);
		
		sb.ReUpdateForm(BO_NO,BO_RNO,BO_WRITEDAY,BO_CONTENT,BO_WRITER,BO_GROUPS,BO_STEP,BO_INDENT);
		
		
		
		return "redirect:bodetail1?BO_NO=" + BO_NO;
	}
	
	
	
}
