package br.com.elton.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SpringBootApplication
public class WebApplication extends WebMvcConfigurerAdapter {

	@Override
	public void addViewControllers(final ViewControllerRegistry registry) {
		registry.addViewController("/web").setViewName("forward:/views/index.html");
	}

	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
	}

	public static void main(final String[] args) {
		SpringApplication.run(WebApplication.class, args);
	}
}
