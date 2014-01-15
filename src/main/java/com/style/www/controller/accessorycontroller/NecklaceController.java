package com.style.www.controller.accessorycontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NecklaceController {

	@RequestMapping(value="necklace", method=RequestMethod.GET)
	public String necklace(){
		return "accessory/necklace";
	}
	
	@RequestMapping(value="necklace1", method=RequestMethod.GET)
	public String necklace1(){
		return "accessory/necklace1";
	}
	
	@RequestMapping(value="necklace2", method=RequestMethod.GET)
	public String necklace2(){
		return "accessory/necklace2";
	}
	
	@RequestMapping(value="necklace3", method=RequestMethod.GET)
	public String necklace3(){
		return "accessory/necklace3";
	}
	
	@RequestMapping(value="necklace4", method=RequestMethod.GET)
	public String necklace4(){
		return "accessory/necklace4";
	}
	
	@RequestMapping(value="necklace5", method=RequestMethod.GET)
	public String necklace5(){
		return "accessory/necklace5";
	}
}
