package com.style.www.controller.pantscontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SkinnyController {

	@RequestMapping(value="skinny", method=RequestMethod.GET)
	public String skinny(){
		return "pants/skinny";
	}
	
	@RequestMapping(value="skinny1", method=RequestMethod.GET)
	public String skinny1(){
		return "pants/skinny1";
	}
	
	@RequestMapping(value="skinny2", method=RequestMethod.GET)
	public String skinny2(){
		return "pants/skinny2";
	}
	
	@RequestMapping(value="skinny3", method=RequestMethod.GET)
	public String skinny3(){
		return "pants/skinny3";
	}
	
	@RequestMapping(value="skinny4", method=RequestMethod.GET)
	public String skinny4(){
		return "pants/skinny4";
	}
	
	@RequestMapping(value="skinny5", method=RequestMethod.GET)
	public String skinny5(){
		return "pants/skinny5";
	}
}
