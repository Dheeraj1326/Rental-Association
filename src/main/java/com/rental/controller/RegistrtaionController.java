package com.rental.controller;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rental.model.Cities;
import com.rental.model.States;
import com.rental.model.Users;

@Controller
public class RegistrtaionController extends HomeController{
	private List<Cities> city;
	private List<States> state;
	private Users findByEmail;
	private Users saveUser;

	
	@GetMapping("/signup")
	public String register(Model model) {
		Users user=new Users();
		city = registrationService.city();
		state = registrationService.state();
		
		model.addAttribute("cityList",city);
		model.addAttribute("stateList", state);
		model.addAttribute("user",user);
		return "register";
	}
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("user") Users user,Model model) {

		String name  	=  user.getName();
		String age   	=  user.getAge();
		String phone 	=  user.getPhone();
		String email 	=  user.getEmail();
		String password =  user.getPassword();
		String address  =  user.getAddress();
		
		user.setCreated(new Date());
		user.setModified(new Date());
		
		if(name.isEmpty()) {
			model.addAttribute("error", "Name is Required.");
			model.addAttribute("cityList",city);
			model.addAttribute("stateList", state);
			model.addAttribute("user",user);
			return "register";
		}
		if(age.isEmpty()) {
			model.addAttribute("error", "Age is Required.");
			model.addAttribute("cityList",city);
			model.addAttribute("stateList", state);
			model.addAttribute("user",user);
			return "register";
		}
		if(phone.isEmpty()) {
			model.addAttribute("error", "Phone is Required.");
			model.addAttribute("cityList",city);
			model.addAttribute("stateList", state);
			model.addAttribute("user",user);
			return "register";
		}
		if(email.isEmpty()) {
			model.addAttribute("error", "Email is Required.");
			model.addAttribute("cityList",city);
			model.addAttribute("stateList", state);
			model.addAttribute("user",user);
			return "register";
		}
		if(password.isEmpty()) {
			model.addAttribute("error", "Password is Required.");
			model.addAttribute("cityList",city);
			model.addAttribute("stateList", state);
			model.addAttribute("user",user);
			return "register";
		}
		if(address.isEmpty()) {
			model.addAttribute("error", "Address is Required.");
			model.addAttribute("cityList",city);
			model.addAttribute("stateList", state);
			model.addAttribute("user",user);
			return "register";
		}
		
		findByEmail = registrationService.findByEmail(email);
		if(findByEmail == null) {
			user.setCreated(new Date());
			user.setModified(new Date());
			user.setStatus(1);
			 
			saveUser = registrationService.saveUser(user);
			
			if(saveUser != null) {
				model.addAttribute("result", "User Created Successfully..");
				model.addAttribute("cityList",city);
				model.addAttribute("stateList", state);
				model.addAttribute("user",user);
				return "register";
			}
			else {
				model.addAttribute("error", "Something Went Wrong.");
				model.addAttribute("cityList",city);
				model.addAttribute("stateList", state);
				model.addAttribute("user",user);
				return "register";
			}
			
			
		}
		else {
			model.addAttribute("error", "Email Already Exist.");
			model.addAttribute("cityList",city);
			model.addAttribute("stateList", state);
			model.addAttribute("user",user);
			return "register";
		}
	}
}
