package com.rental.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rental.model.Cities;

@Repository
public interface CitiesRepository extends JpaRepository<Cities, Integer>{

}
