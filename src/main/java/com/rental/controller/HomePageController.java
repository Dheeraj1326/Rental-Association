package com.rental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rental.model.RentalPosts;


@Controller
public class HomePageController {
	@GetMapping("/")
	public String home(Model model) {
		RentalPosts rentalPos = new RentalPosts();
		model.addAttribute("rental",rentalPos);
		return "index";
	}
	

	@GetMapping("/index")
	public String index(Model model) {
		RentalPosts rentalPos = new RentalPosts();
		model.addAttribute("rental",rentalPos);
		return "index";
	}
}
