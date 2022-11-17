package com.iu.d;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class HomeController 
{
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/")
	public String main1()
	{
		return "redirect:index";
	}
	
	
	@RequestMapping(value="/index")
	public String main2()
	{
		return "/member/main";
	}
	
	@RequestMapping(value="/aboutiu")
	public String about()
	{
		return "/member/AboutIU";
	}
	
}
