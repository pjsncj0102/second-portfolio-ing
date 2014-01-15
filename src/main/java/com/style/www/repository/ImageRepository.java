package com.style.www.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.style.www.domain.Image;

public interface ImageRepository extends JpaRepository<Image, Long>{

}
