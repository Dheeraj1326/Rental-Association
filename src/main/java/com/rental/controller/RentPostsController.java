package com.rental.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rental.model.Cities;
import com.rental.model.RentalPosts;

@Controller
public class RentPostsController extends HomeController {
	@Autowired
	protected FileUploadHelper fileUpload;
	private boolean uploadFile;
	private List<Cities> city;
	@GetMapping("/savePost")
	public String savePost(Model model) {
		RentalPosts rentalposts = new RentalPosts();
		city = registrationService.city();
		model.addAttribute("cityList",city);
		model.addAttribute("rentalPosts",rentalposts);
		return "rentPost";
	}
	@PostMapping("/SaveRentalPost")
	public String savePost(@RequestParam("file") MultipartFile file,
			@ModelAttribute("rentalPost") RentalPosts rentalpost,BindingResult bindingResult, Model model) {

		try {
//			StringBuilder fileName= new StringBuilder();
//			for (MultipartFile multipartFile : file) {
//				fileName.append(multipartFile.getOriginalFilename()+",");
//				uploadFile = fileUpload.uploadFile(multipartFile);
//			}
			String fileName=file.getOriginalFilename();
			uploadFile = fileUpload.uploadFile(file);

			if (uploadFile) {
				rentalpost.setFileName(fileName);
				rentalpost.setCreated(new Date());
				rentalpost.setModified(new Date());
				rentalpost.setStatus(1);
				
				rentalService.savePosts(rentalpost);
				
				city = registrationService.city();
				model.addAttribute("cityList",city);
				rentalpost.setName("");
				rentalpost.setPrice("");
				model.addAttribute("rentalPosts",rentalpost);
				model.addAttribute("done","Post Save Successfully.");
				
				
				return "rentPost";
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("cityList",city);
		rentalpost.setName("");
		rentalpost.setPrice("");
		model.addAttribute("rentalPosts",rentalpost);
		model.addAttribute("error", "Something Went Wrong.");
		return "rentPost";
	}
}
