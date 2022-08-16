package com.rental.service;

import org.springframework.stereotype.Service;

import com.rental.model.Cities;
import com.rental.model.RentalPosts;

@Service
public class RentalPostsService extends HomeService implements IRentalPostsService{
	
	@Override
	public RentalPosts savePosts(RentalPosts rentalPosts) {
		// TODO Auto-generated method stub
		return rentalPostsRepo.save(rentalPosts);
	}
	@Override
	public RentalPosts findByCity(Cities city) {
		// TODO Auto-generated method stub
		return rentalPostsRepo.findByCity(city);
	}
	@Override
	public RentalPosts findByPrice(String price) {
		// TODO Auto-generated method stub
		return rentalPostsRepo.findByPrice(price);
	}
	@Override
	public RentalPosts findByRoom(String room) {
		// TODO Auto-generated method stub
		return rentalPostsRepo.findByRoom(room);
	}
}
