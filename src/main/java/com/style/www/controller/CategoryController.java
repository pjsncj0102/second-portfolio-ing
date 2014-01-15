package com.style.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.style.www.service.CategoryService;

@Controller
public class CategoryController {
	
	@Autowired private CategoryService categoryService;
	
	@RequestMapping(value={"/categories"}, method=RequestMethod.GET)
	public String getCategories(ModelMap map){
		map.put("data", categoryService.findRootCategories());
		return "jsonView";
	}
	
	@RequestMapping(value={"/categories/{id}"}, method=RequestMethod.GET)
	public String findCategories(@PathVariable Long id, ModelMap map){
		map.put("data", categoryService.findSubCategoriesById(id));
		return "jsonView";
	}
}
