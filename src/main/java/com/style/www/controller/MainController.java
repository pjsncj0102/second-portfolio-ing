package com.style.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.style.www.domain.rest.FashionNews;
import com.style.www.service.InitDataService;

@Controller
public class MainController {
	
	/*@Autowired  RestTemplate restTemplate;
	
	@RequestMapping(value="fashion", method=RequestMethod.GET)
	public void home(){
		
	}
	
	@RequestMapping(value="fashion/news", method=RequestMethod.GET)
	public String fashionNews(ModelMap map){
		FashionNews news = restTemplate.getForObject("http://apis.daum.net/search/web?q=�대쭏��apikey=DAUM_SEARCH_DEMO_APIKEY&output=json", FashionNews.class);
		map.put("news", news);
		return "jsonView";
	}*/
	
	@Autowired InitDataService initDataService;
	
	@RequestMapping(value={"/","main"}, method=RequestMethod.GET)
	public String main(){
		return "main";
	}
	
	@RequestMapping(value="outer", method=RequestMethod.GET)
	public String outer(){
		return "outer";
	}
	
	@RequestMapping(value="top", method=RequestMethod.GET)
	public String top(){
		return "top";
	}
	
	@RequestMapping(value="pants", method=RequestMethod.GET)
	public String pants(){
		return "pants";
	}
	
	@RequestMapping(value="shoes", method=RequestMethod.GET)
	public String shoes(){
		return "shoes";
	}
	
	@RequestMapping(value="bag", method=RequestMethod.GET)
	public String bag(){
		return "bag";
	}
	
	@RequestMapping(value="accessory", method=RequestMethod.GET)
	public String accessroy(){
		return "accessory";
	}
	
}






