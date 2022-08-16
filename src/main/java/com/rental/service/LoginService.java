package com.rental.service;

import org.springframework.stereotype.Service;

import com.rental.model.Users;

@Service
public class LoginService extends HomeService implements ILoginService{
	@Override
	public Users findByEmailAndPassword(String email, String password) {
		return userRepo.findByEmailAndPassword(email, password);
	}
}
