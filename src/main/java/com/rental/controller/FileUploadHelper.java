package com.rental.controller;

import java.io.File;
//import java.io.FileOutputStream;
//import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUploadHelper {
	public static String UPLOAD_DIR = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\imagedata";
//	private InputStream inputStream;
//	private byte data[];
//	private FileOutputStream fileOutputStream;

	public boolean uploadFile(MultipartFile multipartFile) {
		boolean f = false;
		try {
//			// read data from multipartFile object.
//				inputStream = multipartFile.getInputStream();
//				data = new byte[inputStream.available()];
//				inputStream.read(data);
//
//			// write data into file by fileOutput stream.
//				fileOutputStream = new FileOutputStream(UPLOAD_DIR+File.separator+multipartFile.getOriginalFilename());
//				fileOutputStream.write(data);
//				
//				fileOutputStream.close();
//				inputStream.close();
			Files.copy(multipartFile.getInputStream(),
					Paths.get(UPLOAD_DIR + File.separator + multipartFile.getOriginalFilename()),
					StandardCopyOption.REPLACE_EXISTING);
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
