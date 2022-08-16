package com.rental.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rental.model.Cities;
import com.rental.model.States;
import com.rental.model.Users;

@Service
public class RegistrtationService extends HomeService implements IRegistrationService{
	
	@Override
	public List<Cities> city() {
		return cityRepo.findAll();
	}
	@Override
	public List<States> state() {
		return stateRepo.findAll();
	}
	@Override
	public Users saveUser(Users user) {
		return userRepo.save(user);
	}
	
	@Override
	public Users findByEmail(String email) {
		return userRepo.findByEmail(email);
	}
}
