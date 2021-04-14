package com.subhoTech.FirstHelloworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class FirstHelloworldApplication {

	public static void main(String[] args) {
		SpringApplication.run(FirstHelloworldApplication.class, args);
	}
	
	@GetMapping("/hi")
	public String message() {
		
		return "Hello HII";
	}

}
