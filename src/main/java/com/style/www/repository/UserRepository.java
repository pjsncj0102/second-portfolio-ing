package com.style.www.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.style.www.domain.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
