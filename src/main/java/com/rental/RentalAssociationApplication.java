package com.rental;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.rental.controller.FileUploadHelper;

@SpringBootApplication
public class RentalAssociationApplication {

	public static void main(String[] args) {
		new File(FileUploadHelper.UPLOAD_DIR).mkdir();
		SpringApplication.run(RentalAssociationApplication.class, args);
	}

}
