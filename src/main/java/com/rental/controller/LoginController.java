package com.rental.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rental.model.Cities;
import com.rental.model.RentalPosts;
import com.rental.model.Users;

@Controller
public class LoginController extends HomeController{
	
	private Users findByEmailAndPassword;
	private List<Cities> city;
	@GetMapping("/login")
	public String login(Model model) {
		Users user=new Users();
		model.addAttribute("user", user);
		return "login";
	}
	@PostMapping("/Login")
	public String checkLogin(@ModelAttribute("user") Users user, Model model) {
		String email= user.getEmail();
		String password = user.getPassword();
		
		if(email.isEmpty()) {
			model.addAttribute("error", "Email is Required.");
			model.addAttribute("user", user);
			return "login";
		}
		if(password.isEmpty()) {
			model.addAttribute("error", "Password is Required.");
			model.addAttribute("user", user);
			return "login";
		}
		
		findByEmailAndPassword = loginService.findByEmailAndPassword(email, password);
		
		if(findByEmailAndPassword != null) {
			RentalPosts rentalposts = new RentalPosts();
			city = registrationService.city();
			model.addAttribute("cityList",city);
			model.addAttribute("rentalPosts",rentalposts);
			return "rentPost";
		}
		else {
			model.addAttribute("error", "Invalid UserName Or Password.");
			model.addAttribute("user", user);
			return "login";
		}
		
	}
}
