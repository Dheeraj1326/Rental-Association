package com.rental.controller;

import org.springframework.beans.factory.annotation.Autowired;

import com.rental.service.LoginService;
import com.rental.service.RegistrtationService;
import com.rental.service.RentalPostsService;

public class HomeController {
	@Autowired
	protected RegistrtationService registrationService;
	@Autowired
	protected LoginService loginService;
	@Autowired
	protected RentalPostsService rentalService;
}
