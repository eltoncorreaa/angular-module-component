package br.com.elton.app.criterioAceitacao.cucumber.stepdefs;

import java.io.IOException;

import org.openqa.selenium.WebDriver;

import cucumber.api.java.Before;

public class Config {

	public static WebDriver driver;

	@Before
	/**
	 * Deleta todos os cookies e maximiza janela '
	 */
	public void openBrowser() throws IOException {
		driver = ConfigFactory.getWebDriver();
	}
}
