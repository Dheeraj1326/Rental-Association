package com.rental.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rental.model.Users;

@Repository
public interface UserRepository extends JpaRepository<Users, Integer>{
	Users findByEmail(String email);
	Users findByEmailAndPassword(String email, String password);
}
