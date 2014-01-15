package com.style.www.controller.shoescontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoaferController {

	@RequestMapping(value="loafer", method=RequestMethod.GET)
	public String loafer(){
		return "shoes/loafer";
	}
	
	@RequestMapping(value="loafer1", method=RequestMethod.GET)
	public String loafer1(){
		return "shoes/loafer1";
	}
	
	@RequestMapping(value="loafer2", method=RequestMethod.GET)
	public String loafer2(){
		return "shoes/loafer2";
	}
	
	@RequestMapping(value="loafer3", method=RequestMethod.GET)
	public String loafer3(){
		return "shoes/loafer3";
	}
	
	@RequestMapping(value="loafer4", method=RequestMethod.GET)
	public String loafer4(){
		return "shoes/loafer4";
	}
	
	@RequestMapping(value="loafer5", method=RequestMethod.GET)
	public String loafer5(){
		return "shoes/loafer5";
	}
}
