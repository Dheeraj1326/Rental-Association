package com.rental.service;

import java.util.List;

import com.rental.model.Cities;
import com.rental.model.States;
import com.rental.model.Users;

public interface IRegistrationService {
	List<States> state();
	List<Cities> city();
	
	public Users saveUser(Users user);
	
	Users findByEmail(String email);
}
