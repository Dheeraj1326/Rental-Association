package com.rental.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.rental.dao.CitiesRepository;
import com.rental.dao.RentalPostsRepository;
import com.rental.dao.StateRepository;
import com.rental.dao.UserRepository;

public class HomeService {
	@Autowired
	protected CitiesRepository cityRepo;
	@Autowired
	protected StateRepository stateRepo;
	@Autowired
	protected UserRepository userRepo;
	@Autowired
	protected RentalPostsRepository rentalPostsRepo;
}
