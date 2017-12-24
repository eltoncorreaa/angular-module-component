package br.com.elton.app.criterioAceitacao.cucumber.stepdefs;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.github.bonigarcia.wdm.ChromeDriverManager;

public class ConfigFactory {

	public static WebDriver getWebDriver() throws IOException{
		ChromeDriverManager.getInstance().setup();
		System.setProperty("webdriver.chrome.driver", getProperties().getProperty("webdriver.chrome.driver"));
		return new ChromeDriver();
	}

	private static Properties getProperties() throws IOException {
		final Properties props = new Properties();
		final FileInputStream file = new FileInputStream("."+ File.separator +"src" + File.separator + "test"+ File.separator +"resources"+ File.separator +"application.properties");
		props.load(file);
		return props;
	}

}
