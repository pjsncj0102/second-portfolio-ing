package com.style.www.controller.topcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KnitController {

	@RequestMapping(value="knit", method=RequestMethod.GET)
	public String knit(){
		return "top/knit";
	}
	
	@RequestMapping(value="knit1", method=RequestMethod.GET)
	public String knit1(){
		return "top/knit1";
	}
	
	@RequestMapping(value="knit2", method=RequestMethod.GET)
	public String knit2(){
		return "top/knit2";
	}
	
	@RequestMapping(value="knit3", method=RequestMethod.GET)
	public String knit3(){
		return "top/knit3";
	}
	
	@RequestMapping(value="knit4", method=RequestMethod.GET)
	public String knit4(){
		return "top/knit4";
	}
	
	@RequestMapping(value="knit5", method=RequestMethod.GET)
	public String knit5(){
		return "top/knit5";
	}
}
