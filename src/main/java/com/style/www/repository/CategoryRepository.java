package com.style.www.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.style.www.domain.Category;

public interface CategoryRepository extends JpaRepository<Category, Long>{

	List<Category> findByParentIsNull();

}
