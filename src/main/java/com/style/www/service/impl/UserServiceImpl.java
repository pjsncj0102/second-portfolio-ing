package com.style.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.style.www.domain.User;
import com.style.www.repository.UserRepository;
import com.style.www.service.UserService;

@Service
@Transactional(readOnly=true)
public class UserServiceImpl implements UserService{

        @Autowired private UserRepository userRepository;
        @Autowired private PasswordEncoder passwordEncoder;
        
        @Override
        public List<User> getUser() {
                return userRepository.findAll();
        }

        @Override
        @Transactional(readOnly=false, rollbackFor=Exception.class)
        public User saveUser(User user) {
                return userRepository.saveAndFlush(user);
        }

        @Override
        @Transactional(readOnly=false, rollbackFor=Exception.class)
        public void registUser(User user) {
                 user.setPasswd(passwordEncoder.encode(user.getPasswd()));
                 userRepository.saveAndFlush(user);
        }
}