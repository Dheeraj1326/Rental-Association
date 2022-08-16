package com.rental.service;

import com.rental.model.Cities;
import com.rental.model.RentalPosts;

public interface IRentalPostsService {
	public RentalPosts savePosts(RentalPosts rentalPosts);
	
	RentalPosts findByCity(Cities city);
	RentalPosts findByRoom(String room);
	RentalPosts findByPrice(String price);
	
}
