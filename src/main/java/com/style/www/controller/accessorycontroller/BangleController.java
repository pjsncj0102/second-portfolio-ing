package com.style.www.controller.accessorycontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BangleController {

	@RequestMapping(value="bangle", method=RequestMethod.GET)
	public String bangle(){
		return "accessory/bangle";
	}
	
	@RequestMapping(value="bangle1", method=RequestMethod.GET)
	public String bangle1(){
		return "accessory/bangle1";
	}
	
	@RequestMapping(value="bangle2", method=RequestMethod.GET)
	public String bangle2(){
		return "accessory/bangle2";
	}
	
	@RequestMapping(value="bangle3", method=RequestMethod.GET)
	public String bangle3(){
		return "accessory/bangle3";
	}
	
	@RequestMapping(value="bangle4", method=RequestMethod.GET)
	public String bangle4(){
		return "accessory/bangle4";
	}
	
	@RequestMapping(value="bangle5", method=RequestMethod.GET)
	public String bangle5(){
		return "accessory/bangle5";
	}
}
