package com.style.www.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.style.www.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{


}
