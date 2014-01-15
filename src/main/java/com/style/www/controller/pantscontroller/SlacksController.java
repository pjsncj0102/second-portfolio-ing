package com.style.www.controller.pantscontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SlacksController {

	@RequestMapping(value="slacks", method=RequestMethod.GET)
	public String slacks(){
		return "pants/slacks";
	}
	
	@RequestMapping(value="slacks1", method=RequestMethod.GET)
	public String slacks1(){
		return "pants/slacks1";
	}
	
	@RequestMapping(value="slacks2", method=RequestMethod.GET)
	public String slacks2(){
		return "pants/slacks2";
	}
	
	@RequestMapping(value="slacks3", method=RequestMethod.GET)
	public String slacks3(){
		return "pants/slacks3";
	}
	
	@RequestMapping(value="slacks4", method=RequestMethod.GET)
	public String slacks4(){
		return "pants/slacks4";
	}
	
	@RequestMapping(value="slacks5", method=RequestMethod.GET)
	public String slacks5(){
		return "pants/slacks5";
	}
}
