package com.style.www.controller.pantscontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaggyController {

	@RequestMapping(value="baggy", method=RequestMethod.GET)
	public String baggy(){
		return "pants/baggy";
	}
	
	@RequestMapping(value="baggy1", method=RequestMethod.GET)
	public String baggy1(){
		return "pants/baggy1";
	}
	
	@RequestMapping(value="baggy2", method=RequestMethod.GET)
	public String baggy2(){
		return "pants/baggy2";
	}
	
	@RequestMapping(value="baggy3", method=RequestMethod.GET)
	public String baggy3(){
		return "pants/baggy3";
	}
	
	@RequestMapping(value="baggy4", method=RequestMethod.GET)
	public String baggy4(){
		return "pants/baggy4";
	}
	
	@RequestMapping(value="baggy5", method=RequestMethod.GET)
	public String baggy5(){
		return "pants/baggy5";
	}
}
