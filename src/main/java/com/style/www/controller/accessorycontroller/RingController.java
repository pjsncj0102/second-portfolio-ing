package com.style.www.controller.accessorycontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RingController {

	@RequestMapping(value="ring", method=RequestMethod.GET)
	public String ring(){
		return "accessory/ring";
	}
	
	@RequestMapping(value="ring1", method=RequestMethod.GET)
	public String ring1(){
		return "accessory/ring1";
	}
	
	@RequestMapping(value="ring2", method=RequestMethod.GET)
	public String ring2(){
		return "accessory/ring2";
	}
	
	@RequestMapping(value="ring3", method=RequestMethod.GET)
	public String ring3(){
		return "accessory/ring3";
	}
	
	@RequestMapping(value="ring4", method=RequestMethod.GET)
	public String ring4(){
		return "accessory/ring4";
	}
	
	@RequestMapping(value="ring5", method=RequestMethod.GET)
	public String ring5(){
		return "accessory/ring5";
	}
}
