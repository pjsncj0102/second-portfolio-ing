package com.style.www.controller.bagcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ClutchBagController {

	@RequestMapping(value="clutch", method=RequestMethod.GET)
	public String clutch(){
		return "bag/clutch";
	}
	
	@RequestMapping(value="clutch1", method=RequestMethod.GET)
	public String clutch1(){
		return "bag/clutch1";
	}
	
	@RequestMapping(value="clutch2", method=RequestMethod.GET)
	public String clutch2(){
		return "bag/clutch2";
	}
	
	@RequestMapping(value="clutch3", method=RequestMethod.GET)
	public String clutch3(){
		return "bag/clutch3";
	}
	
	@RequestMapping(value="clutch4", method=RequestMethod.GET)
	public String clutch4(){
		return "bag/clutch4";
	}
	
	@RequestMapping(value="clutch5", method=RequestMethod.GET)
	public String clutch5(){
		return "bag/clutch5";
	}
}
