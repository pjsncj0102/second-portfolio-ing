package com.style.www.controller.topcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShirtController {

	@RequestMapping(value="shirt", method=RequestMethod.GET)
	public String shirt(){
		return "top/shirt";
	}
	
	@RequestMapping(value="shirt1", method=RequestMethod.GET)
	public String shirt1(){
		return "top/shirt1";
	}
	
	@RequestMapping(value="shirt2", method=RequestMethod.GET)
	public String shirt2(){
		return "top/shirt2";
	}
	
	@RequestMapping(value="shirt3", method=RequestMethod.GET)
	public String shir3t(){
		return "top/shirt3";
	}
	
	@RequestMapping(value="shirt4", method=RequestMethod.GET)
	public String shirt4(){
		return "top/shirt4";
	}
	
	@RequestMapping(value="shirt5", method=RequestMethod.GET)
	public String shirt5(){
		return "top/shirt5";
	}
}
