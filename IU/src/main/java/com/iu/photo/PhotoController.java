package com.iu.photo;



import java.io.File;

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

import com.iu.board.ServiceBoard;




@Controller
public class PhotoController 
{
   @Autowired
   SqlSession sqlSession;
   //사진게시판입력,경로설정
   private static final String CURR_IMAGE_REPO_PATH = "C:\\Spring\\IU\\src\\main\\webapp\\resources\\photoimage";
   
   //입력
   @RequestMapping(value="/ptinput")
   public String ptinput()
   {
      return "/photo/ptinput";
   }
   
   //저장
   @RequestMapping(value="/ptsave",method=RequestMethod.POST)
   public ModelAndView ptsave(MultipartHttpServletRequest mul, HttpServletRequest response) throws Exception
   {
      ModelAndView mav = new ModelAndView();
      
      String PT_TITLE=mul.getParameter("PT_TITLE");
      String PT_CONTENT=mul.getParameter("PT_CONTENT");
      MultipartFile im=mul.getFile("PT_PICTURE");
      String PT_PICTURE=im.getOriginalFilename();
      String PT_WRITER=mul.getParameter("PT_WRITER");
      
      mul.setCharacterEncoding("utf-8");
      Map map = new HashMap();
      
      List fileList = fileProcess(mul);
      map.put("fileList", fileList);
      
      ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
      sp.ptinputdata(PT_TITLE,PT_CONTENT,PT_PICTURE,PT_WRITER);
      
      mav.setViewName("redirect:ptpage");
      return mav;
   }//이미지 저장
   private List<String> fileProcess(MultipartHttpServletRequest mul) throws Exception 
   {
      List<String> fileList = new ArrayList<String>();
      Iterator<String> fileNames=mul.getFileNames();
      
      while(fileNames.hasNext())
      {
         String fileName = fileNames.next();      
         MultipartFile mFile = mul.getFile(fileName);      
         String originalFileName = mFile.getOriginalFilename();
         fileList.add(originalFileName);      //업로드된 파일 목록에 추가
         
         File file = new File(CURR_IMAGE_REPO_PATH+"\\"+fileName);
         mFile.transferTo(new File(CURR_IMAGE_REPO_PATH+"\\"+originalFileName));
      }
      
      return fileList;
   }
   
   //사진게시판출력
   @RequestMapping(value="/ptout")
   public String boout(Model mo){
	   ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
	   ArrayList<PhotoDTO> list = sp.ptout();
	   mo.addAttribute("list",list);
       return "/photo/ptout";
   }
   
	//사진게시판디테일
	@RequestMapping(value = "/ptdetail")
	public String ptdetail(HttpServletRequest request,Model mo) 
	{
		int PT_NO = Integer.parseInt(request.getParameter("PT_NO"));
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		
		PhotoDTO dto = sp.ptdetail(PT_NO);
		mo.addAttribute("list",dto);
		
		ArrayList<PtReplyDTO> rep =sp.ptreplylist(PT_NO);
		mo.addAttribute("rep",rep);
		
		readcntup(PT_NO);
		
		return "/photo/ptdetail";
	}
	//사진게시판디테일2
	@RequestMapping(value = "/ptdetail1")
	public String ptdetail1(HttpServletRequest request,Model mo) 
	{
		int PT_NO = Integer.parseInt(request.getParameter("PT_NO"));
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		
		PhotoDTO dto = sp.ptdetail(PT_NO);
		mo.addAttribute("list",dto);
		
		ArrayList<PtReplyDTO> rep =sp.ptreplylist(PT_NO);
		mo.addAttribute("rep",rep);
		
		
		return "/photo/ptdetail1";
	}
	//조회수
	public void readcntup(int PT_NO) {
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		sp.readcntup(PT_NO);
	}   
	
	//업데이트 ui
	@RequestMapping(value="/ptmodify")
	public String updateui(HttpServletRequest request,Model mo)
	{
		int PT_NO = Integer.parseInt(request.getParameter("PT_NO"));
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		ArrayList<PhotoDTO> up = sp.ptmodify(PT_NO);
		mo.addAttribute("up",up);
		return "/photo/ptmodify";
	}//사진 업데이트 저장
	@RequestMapping(value="/ptupdate")
	public ModelAndView updatesave(HttpServletRequest request,MultipartHttpServletRequest mul) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		int PT_NO = Integer.parseInt(request.getParameter("PT_NO"));
		String PT_TITLE=mul.getParameter("PT_TITLE");
		String PT_WRITEDAY=mul.getParameter("PT_WRITEDAY");
		String PT_CONTENT=mul.getParameter("PT_CONTENT");
		MultipartFile im=mul.getFile("PT_PICTURE");
		String PT_PICTURE=im.getOriginalFilename();
		String PT_WRITER=mul.getParameter("PT_WRITER");
		int PT_READCNT=Integer.parseInt(mul.getParameter("PT_READCNT"));
		
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		sp.ptupdate(PT_NO, PT_TITLE, PT_WRITEDAY, PT_CONTENT, PT_PICTURE, PT_WRITER, PT_READCNT);
		
		mul.setCharacterEncoding("utf-8");
		Map map = new HashMap();
		
		List fileList = fileProcess(mul);
		map.put("fileList", fileList);
		
		mav.setViewName("redirect:ptpage");
		return mav;
	}
	
	//삭제 ui
	@RequestMapping(value="/ptdeleteui")
	public String deleteui(HttpServletRequest request,Model mo)
	{
		int PT_NO = Integer.parseInt(request.getParameter("PT_NO"));
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		ArrayList<PhotoDTO> del = sp.ptdeleteui(PT_NO);
		mo.addAttribute("del",del);
		
		return "/photo/ptdeleteui";
	}
	//삭제 저장
	@RequestMapping(value="/ptdelete")
	public String delete(HttpServletRequest request)
	{
		int PT_NO = Integer.parseInt(request.getParameter("PT_NO"));
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		sp.ptdelete(PT_NO);
		
		return "redirect:ptpage";
	}
	
	//페이징
	@RequestMapping(value="/ptpage")
	public String page(HttpServletRequest request, PtPageDTO dt, Model mo)
	{
		String nowPage=request.getParameter("nowPage");
		String cntPerPage=request.getParameter("cntPerPage");
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		int total = sp.cntpage();
	    if(nowPage == null && cntPerPage == null) 
	    {
	    	nowPage="1";
	    	cntPerPage="8";
	    }
	    else if(nowPage == null) 
	    {
	    	nowPage="1";
	    }
	    else if(cntPerPage == null) 
	    {
	    	cntPerPage="8";
	    }
	    dt = new PtPageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
	    mo.addAttribute("paging",dt);
	    mo.addAttribute("list",sp.selectpage(dt));
	    
		return "/photo/ptpage";
	}
	
	//댓글 입력
	@RequestMapping(value="/ptreply")
	public String reply(HttpServletRequest request)
	{
		int PT_NO=Integer.parseInt(request.getParameter("PT_NO"));
		String writer=request.getParameter("writer");
		String content=request.getParameter("content");
		
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		sp.ptreplysave(PT_NO, writer, content);
		sp.recnt(PT_NO);
		return "redirect:ptdetail1?PT_NO=" + PT_NO;
	} //대댓글
	public void recnt(int PT_NO)
    {
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
	    sp.recnt(PT_NO);
    }
	@RequestMapping(value="/ptrereply",method=RequestMethod.POST)
	public String ptrereply(HttpServletRequest request)
	{
		int PT_NO=Integer.parseInt(request.getParameter("PT_NO"));
		int PT_GROUPS = Integer.parseInt(request.getParameter("PT_GROUPS"));
		int PT_STEP = Integer.parseInt(request.getParameter("PT_STEP"));
		int PT_INDENT = Integer.parseInt(request.getParameter("PT_INDENT"));
		String RWRITER = request.getParameter("RWRITER");
		String RCONTENT = request.getParameter("RCONTENT").replace("\r\n", "<br>");
		
		MakeReply(PT_GROUPS,PT_STEP);
		PT_INDENT ++;
		PT_STEP ++;
		
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		sp.ptrereply(PT_NO, RWRITER, RCONTENT, PT_GROUPS, PT_STEP, PT_INDENT);
		sp.recnt(PT_NO);
		return "redirect:ptdetail1?PT_NO=" + PT_NO;
	}
	private void MakeReply(int PT_GROUPS, int PT_STEP) 
	{
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		sp.ptmakereply(PT_GROUPS, PT_STEP);
	}
	
	//댓글 삭제
	@RequestMapping(value="/ptredelete")
	public String replydelete(HttpServletRequest request)
	{
		PhotoDTO dt = new PhotoDTO();
		int PT_RNO = Integer.parseInt(request.getParameter("PT_RNO"));
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		dt.setPT_NO(sp.ptno(PT_RNO));
		dt.getPT_NO();
		sp.ptredelete(PT_RNO);
		sp.recntdown(dt.getPT_NO());
		return "redirect:ptdetail1?PT_NO=" + dt.getPT_NO();
	}
	public void ptno(int PT_RNO)
	{
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		sp.ptno(PT_RNO);
	}
    public void recntdown(int PT_NO)
    {
    	ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
	    sp.recntdown(PT_NO);
    }	
	//검색
	@RequestMapping(value="/ptsearch")
	public String search(HttpServletRequest request,Model mo)
	{
		String sname=request.getParameter("sname");
		String svalue=request.getParameter("svalue");
		
		ArrayList<PhotoDTO> list = null;
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		if(sname.equals("PT_TITLE"))
		{
			list = sp.pttitlesearch(svalue);
		}
		else
		{
			list = sp.ptwritersearch(svalue);
		}
		
		mo.addAttribute("list",list);
		
		return "/photo/ptpage";
	}
	//댓글수정입력
	@RequestMapping(value="/PTReUpdateForm", method = RequestMethod.POST)
	public String reupdateform(HttpServletRequest request,Model mo)
	{
		
		
		int PT_NO=Integer.parseInt(request.getParameter("PT_NO"));
		int PT_RNO = Integer.parseInt(request.getParameter("PT_RNO"));
		String PT_WRITEDAY=request.getParameter("PT_WRITEDAY");
		String PT_CONTENT=request.getParameter("PT_CONTENT");
		String PT_WRITER=request.getParameter("PT_WRITER");
		int PT_GROUPS = Integer.parseInt(request.getParameter("PT_GROUPS"));
		int PT_STEP = Integer.parseInt(request.getParameter("PT_STEP"));
		int PT_INDENT = Integer.parseInt(request.getParameter("PT_INDENT"));
		ServicePhoto sp = sqlSession.getMapper(ServicePhoto.class);
		
		sp.PTReUpdateForm(PT_NO,PT_RNO,PT_WRITEDAY,PT_CONTENT,PT_WRITER);
		
		
		
		return "redirect:ptdetail1?PT_NO=" + PT_NO;
	}	
	
}