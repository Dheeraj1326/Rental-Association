package com.rental.service;

import com.rental.model.Users;

public interface ILoginService {
	Users findByEmailAndPassword(String email,String password);
}
