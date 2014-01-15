package com.style.www.controller.shoescontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WalkerController {

	@RequestMapping(value="walker", method=RequestMethod.GET)
	public String walker(){
		return "shoes/walker";
	}
	
	@RequestMapping(value="walker1", method=RequestMethod.GET)
	public String walker1(){
		return "shoes/walker1";
	}
	
	@RequestMapping(value="walker2", method=RequestMethod.GET)
	public String walker2(){
		return "shoes/walker2";
	}
	
	@RequestMapping(value="walker3", method=RequestMethod.GET)
	public String walker3(){
		return "shoes/walker3";
	}
	
	@RequestMapping(value="walker4", method=RequestMethod.GET)
	public String walker4(){
		return "shoes/walker4";
	}
	
	@RequestMapping(value="walker5", method=RequestMethod.GET)
	public String walker5(){
		return "shoes/walker5";
	}
}
