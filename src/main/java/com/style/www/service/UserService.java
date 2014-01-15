package com.style.www.service;

import java.util.List;

import com.style.www.domain.User;

public interface UserService {
	List<User> getUser();
	User saveUser(User user);
	void registUser(User user);
}
