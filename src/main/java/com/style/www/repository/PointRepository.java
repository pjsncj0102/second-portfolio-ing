package com.style.www.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.style.www.domain.Point;

public interface PointRepository extends JpaRepository<Point, Long>{

}
