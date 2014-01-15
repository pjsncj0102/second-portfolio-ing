package com.style.www.controller.bagcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BackpackController {

	@RequestMapping(value="backpack", method=RequestMethod.GET)
	public String backpack(){
		return "bag/backpack";
	}
	
	@RequestMapping(value="backpack1", method=RequestMethod.GET)
	public String backpack1(){
		return "bag/backpack1";
	}
		
	@RequestMapping(value="backpack2", method=RequestMethod.GET)
	public String backpack2(){
		return "bag/backpack2";
	}
	
	@RequestMapping(value="backpack3", method=RequestMethod.GET)
	public String backpack3(){
		return "bag/backpack3";
	}
	
	@RequestMapping(value="backpack4", method=RequestMethod.GET)
	public String backpack4(){
		return "bag/backpack4";
	}
	
	@RequestMapping(value="backpack5", method=RequestMethod.GET)
	public String backpack5(){
		return "bag/backpack5";
	}
}
