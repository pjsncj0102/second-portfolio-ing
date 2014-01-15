package com.style.www.controller.bagcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShoulderBagController {

	@RequestMapping(value="shoulder", method=RequestMethod.GET)
	public String shoulder(){
		return "bag/shoulder";
	}
	
	@RequestMapping(value="shoulder1", method=RequestMethod.GET)
	public String shoulder1(){
		return "bag/shoulder1";
	}
	
	@RequestMapping(value="shoulder2", method=RequestMethod.GET)
	public String shoulder2(){
		return "bag/shoulder2";
	}
	
	@RequestMapping(value="shoulder3", method=RequestMethod.GET)
	public String shoulder3(){
		return "bag/shoulder3";
	}
	
	@RequestMapping(value="shoulder4", method=RequestMethod.GET)
	public String shoulder4(){
		return "bag/shoulder4";
	}
	
	@RequestMapping(value="shoulder5", method=RequestMethod.GET)
	public String shoulder5(){
		return "bag/shoulder5";
	}
}
