package net.skhu;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class StudentRequest1Application 
{
	public static void main(String[] args) 
	{
		SpringApplication app = new SpringApplication(StudentRequest1Application.class);
		app.setBannerMode(Banner.Mode.OFF);
		app.run(args);
	}
}
