package com.style.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.style.www.domain.User;
import com.style.www.service.UserService;

@Controller
public class UserController {

	@Autowired private UserService userJoinService;
	
	@RequestMapping(value="user", method=RequestMethod.GET)
	public String user(){
		return "user";
	}
	
	@RequestMapping(value="users", method=RequestMethod.GET)
	public String user(ModelMap map){
		List<User> userList = userJoinService.getUser();
		map.put("userKey", userList);
		return "jsonView";
	}
	
	@RequestMapping(value="users", method=RequestMethod.POST)
	public String saveUser(User user){
		userJoinService.registUser(user);
		return "jsonView";
	}
}
