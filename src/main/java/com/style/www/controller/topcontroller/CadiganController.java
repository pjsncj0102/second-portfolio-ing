package com.style.www.controller.topcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CadiganController {

	@RequestMapping(value="cadigan", method=RequestMethod.GET)
	public String cadigan(){
		return "top/cadigan";
	}
	
	@RequestMapping(value="cadigan1", method=RequestMethod.GET)
	public String cadigan1(){
		return "top/cadigan1";
	}
	
	@RequestMapping(value="cadigan2", method=RequestMethod.GET)
	public String cadigan2(){
		return "top/cadigan2";
	}
	
	@RequestMapping(value="cadigan3", method=RequestMethod.GET)
	public String cadigan3(){
		return "top/cadigan3";
	}
	
	@RequestMapping(value="cadigan4", method=RequestMethod.GET)
	public String cadigan4(){
		return "top/cadigan4";
	}
	
	@RequestMapping(value="cadigan5", method=RequestMethod.GET)
	public String cadigan5(){
		return "top/cadigan5";
	}
}
