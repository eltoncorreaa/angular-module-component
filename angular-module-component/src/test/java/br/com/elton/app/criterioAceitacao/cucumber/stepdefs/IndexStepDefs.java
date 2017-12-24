package br.com.elton.app.criterioAceitacao.cucumber.stepdefs;

import java.io.IOException;

import org.openqa.selenium.WebDriver;

import cucumber.api.java.Before;
import cucumber.api.java.pt.Dado;

public class IndexStepDefs {

	public static WebDriver driver;

	/**
	 * Deleta todos os cookies e maximiza janela '
	 */
	@Before
	public void openBrowser() throws IOException {
		driver = ConfigFactory.getWebDriver();
	}

	@Dado("^o momento que eu abro a pagina inicial da aplicação$")
	public void abro_pagina_inicial_aplicacao() {
		driver.get("http://localhost:8091/");
	}
}
