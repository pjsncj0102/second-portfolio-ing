package com.style.www.controller.outercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaddingController {

	@RequestMapping(value="padding", method=RequestMethod.GET)
	public String padding(){
		return "outer/padding";
	}
	
	@RequestMapping(value="padding1", method=RequestMethod.GET)
	public String padding1(){
		return "outer/padding1";
	}
	
	@RequestMapping(value="padding2", method=RequestMethod.GET)
	public String padding2(){
		return "outer/padding2";
	}
	
	@RequestMapping(value="padding3", method=RequestMethod.GET)
	public String padding3(){
		return "outer/padding3";
	}
	
	@RequestMapping(value="padding4", method=RequestMethod.GET)
	public String padding4(){
		return "outer/padding4";
	}
	
}
