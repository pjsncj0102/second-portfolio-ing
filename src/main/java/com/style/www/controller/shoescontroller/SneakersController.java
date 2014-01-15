package com.style.www.controller.shoescontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SneakersController {

	@RequestMapping(value="sneakers", method=RequestMethod.GET)
	public String sneakers(){
		return "shoes/sneakers";
	}
	
	@RequestMapping(value="sneakers1", method=RequestMethod.GET)
	public String sneakers1(){
		return "shoes/sneakers1";
	}
	
	@RequestMapping(value="sneakers2", method=RequestMethod.GET)
	public String sneakers2(){
		return "shoes/sneakers2";
	}
	
	@RequestMapping(value="sneakers3", method=RequestMethod.GET)
	public String sneakers3(){
		return "shoes/sneakers3";
	}
	
	@RequestMapping(value="sneakers4", method=RequestMethod.GET)
	public String sneakers4(){
		return "shoes/sneakers4";
	}
	
	@RequestMapping(value="sneakers5", method=RequestMethod.GET)
	public String sneakers5(){
		return "shoes/sneakers5";
	}
}
