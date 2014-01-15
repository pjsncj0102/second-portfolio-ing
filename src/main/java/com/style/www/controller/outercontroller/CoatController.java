package com.style.www.controller.outercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CoatController {

	@RequestMapping(value="coat", method=RequestMethod.GET)
	public String coat(){
		return "outer/coat";
	}
	
	@RequestMapping(value="coat1", method=RequestMethod.GET)
	public String coat1(){
		return "outer/coat1";
	}
	
	@RequestMapping(value="coat2", method=RequestMethod.GET)
	public String coat2(){
		return "outer/coat2";
	}
	
	@RequestMapping(value="coat3", method=RequestMethod.GET)
	public String coat3(){
		return "outer/coat3";
	}
	
	@RequestMapping(value="coat4", method=RequestMethod.GET)
	public String coat4(){
		return "outer/coat4";
	}
	
	@RequestMapping(value="coat5", method=RequestMethod.GET)
	public String coat5(){
		return "outer/coat5";
	}
}
