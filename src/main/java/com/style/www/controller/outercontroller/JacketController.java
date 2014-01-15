package com.style.www.controller.outercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JacketController {

	@RequestMapping(value="jacket", method=RequestMethod.GET)
	public String jakcet(){
		return "outer/jacket";
	}
	
	@RequestMapping(value="jacket1", method=RequestMethod.GET)
	public String jakcet1(){
		return "outer/jacket1";
	}
	
	@RequestMapping(value="jacket2", method=RequestMethod.GET)
	public String jakcet2(){
		return "outer/jacket2";
	}
	
	@RequestMapping(value="jacket3", method=RequestMethod.GET)
	public String jakcet3(){
		return "outer/jacket3";
	}
	
	@RequestMapping(value="jacket4", method=RequestMethod.GET)
	public String jakcet4(){
		return "outer/jacket4";
	}
	
}
