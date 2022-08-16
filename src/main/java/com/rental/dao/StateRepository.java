package com.rental.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rental.model.States;

@Repository
public interface StateRepository extends JpaRepository<States, Integer>{

}
