package com.style.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.style.www.service.InitDataService;

@Controller
public class InitController {
	
	@Autowired private InitDataService initDataService;
	
	// input test datas
	@RequestMapping(value={"/init/data"}, method=RequestMethod.GET)
	public String initData(){
		initDataService.init();
		return "jsonView";
	}
}
