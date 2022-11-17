package com.iu.melon;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MelonController 
{
	
	@RequestMapping(value="/melon")
	public String melon1()
	{
		return "/melon/Melonmain";
	}
	
	//조각집
	@RequestMapping(value="/jogak")
	public String jogak1()
	{
		return "/melon/jogakjip";
	}
	
	//스트로베리문
	@RequestMapping(value="/straw")
	public String straw()
	{
		return "/melon/strawberrymoon";
	}
	
	//라일락
	@RequestMapping(value="/lilac")
	public String lilac()
	{
		return "/melon/lilac";
	}
	
	//celebrity
	@RequestMapping(value="/cele")
	public String celebr()
	{
		return "/melon/celebrity";
	}
	
	//에잇
	@RequestMapping(value="/eight")
	public String eight()
	{
		return "/melon/eight";
	}
	
	//lovepoem
	@RequestMapping(value="/lovepoem")
	public String lovepoem()
	{
		return "/melon/lovepoem";
	}
	
	//삐삐
	@RequestMapping(value="/bi")
	public String bi()
	{
		return "/melon/bibi";
	}
	
	//꽃갈피2
	@RequestMapping(value="/flower2")
	public String flower2()
	{
		return "/melon/flower2";
	}
	
	//팔레트
	@RequestMapping(value="/palette")
	public String palette()
	{
		return "/melon/palette";
	}
	
	//밤편지
	@RequestMapping(value="/nletter")
	public String nletter()
	{
		return "/melon/nightletter";
	}
	
	//체셔
	@RequestMapping(value="/chatshire")
	public String chatshire()
	{
		return "/melon/chat-shire";
	}
	
	//마음
	@RequestMapping(value="/mind")
	public String mind()
	{
		return "/melon/mind";
	}
	
	//꽃갈피1
	@RequestMapping(value="/flower1")
	public String flower()
	{
		return "/melon/flower1";
	}
	
	//모던타임즈2
	@RequestMapping(value="/modern2")
	public String modern2()
	{
		return "/melon/moderntimes2";
	}
	
	//모던타임즈1
	@RequestMapping(value="/modern1")
	public String modern1()
	{
		return "/melon/moderntimes";
	}
	
	//스무살의봄
	@RequestMapping(value="/20spring")
	public String spring()
	{
		return "/melon/20spring";
	}
	
	//라스트 판타지
	@RequestMapping(value="/lastfantasy")
	public String fantasy()
	{
		return "/melon/lastfantasy";
	}
	
	//real+
	@RequestMapping(value="/realplus")
	public String real2()
	{
		return "/melon/realplus";
	}
	
	//real
	@RequestMapping(value="/real")
	public String real()
	{
		return "/melon/real";
	}
	
	//잔소리
	@RequestMapping(value="/jan")
	public String janso()
	{
		return "/melon/jansori";
	}
	
	//iuim
	@RequestMapping(value="/iuim")
	public String iuim()
	{
		return "/melon/iuim";
	}
	
	//growing up
	@RequestMapping(value="/grup")
	public String grup()
	{
		return "/melon/growingup";
	}
	
	//lost and found
	@RequestMapping(value="/lost")
	public String lost()
	{
		return "/melon/lostandfound";
	}
	
}
