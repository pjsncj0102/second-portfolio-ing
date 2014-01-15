package com.style.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.style.www.domain.Category;
import com.style.www.repository.CategoryRepository;
import com.style.www.service.CategoryService;

@Service
@Transactional(readOnly=true)
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired private CategoryRepository categoryRepository;

	@Override
	public Object findAll() {
		return categoryRepository.findAll();
	}

	@Override
	public Object findRootCategories() {
		return categoryRepository.findByParentIsNull();
	}

	@Override
	public Object findSubCategoriesById(Long id) {
		Category category = categoryRepository.findOne(id);
		return category.getSubCategories();
	}

}