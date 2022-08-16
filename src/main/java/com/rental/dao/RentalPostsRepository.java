package com.rental.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rental.model.Cities;
import com.rental.model.RentalPosts;

@Repository
public interface RentalPostsRepository extends JpaRepository<RentalPosts, Integer>{
	RentalPosts findByCity(Cities city);
	RentalPosts findByPrice(String price);
	RentalPosts findByRoom(String room);
}
