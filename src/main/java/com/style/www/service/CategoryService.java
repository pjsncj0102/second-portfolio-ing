package com.style.www.service;

import java.util.List;

import com.style.www.domain.Category;

public interface CategoryService {

	Object findAll();

	Object findRootCategories();

	Object findSubCategoriesById(Long id);

}
