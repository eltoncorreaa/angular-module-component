package br.com.cielo.web;

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
        /*registry.addViewController("/jsp/list").setViewName("list");
        registry.addViewController("/jsp/form").setViewName("form");
        registry.addViewController("/jsp/modalConfirm").setViewName("modalConfirm");*/
    }

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        //registry.addResourceHandler("/web/**").addResourceLocations("/web/");
    }

    public static void main(final String[] args) {
        SpringApplication.run(WebApplication.class, args);
    }
}
