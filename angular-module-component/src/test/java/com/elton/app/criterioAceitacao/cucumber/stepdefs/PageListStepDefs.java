package com.elton.app.criterioAceitacao.cucumber.stepdefs;

import java.io.IOException;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.InvalidElementStateException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchWindowException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;

import com.elton.app.config.Config;
import com.elton.app.domain.BrowserOptions;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;
import cucumber.api.java.pt.Quando;

public class PageListStepDefs{

	public static final int MAX_SEGUNDOS = 30;

	public static WebDriver driver;

	@Before
	public void openBrowser() throws IOException {
		driver = Config.getWebDriver(BrowserOptions.IE);
	}

	@After
	public void closeBrowser() throws IOException {
		driver.quit();
	}

	@Dado("^o momento que eu abro a pagina de listagem da aplicação$")
	public void abro_pagina_inicial_aplicacao() {
		driver.get("http://localhost:8091/#!/task/list");
	}

	@Quando("^eu clico no botão criar task$")
	public void clico_no_botao_criar_task() {
		clicar(By.id("btnInclude"));
	}

	@Quando("^informo o nome da Task \"([^\"]*)\"$")
	public void informo_o_nome_da_task(final String novoNome) throws Throwable {
		preencherInput(By.id("idInputName"), novoNome);
	}

	@Quando("^informo a data de criação \"([^\"]*)\"$")
	public void informo_o_data_de_criacao_da_task(final String novaData) throws Throwable {
		preencherInput(By.id("idInputStartDate"), novaData);
	}

	@Quando("^tento salvar a task$")
	public void tento_salvar_a_task() throws Throwable {
		clicar(By.id("btnCreate"));
	}

	@Quando("^eu informo nome \"([^\"]*)\" e a data de criação \"([^\"]*)\"$")
	public void informo_o_nome_e_data_de_criacao(final String novoNome, final String novaData) throws Throwable {
		informo_o_nome_da_task(novoNome);
		informo_o_data_de_criacao_da_task(novaData);
	}


	@Entao("^A Task foi incluída com sucesso.$")
	public void task_incluida_com_sucesso() throws Throwable {
		Assert.assertTrue(findElement(By.id("idInputName")).getAttribute("value").isEmpty());
		Assert.assertTrue(findElement(By.id("idInputStartDate")).getAttribute("value").isEmpty());
	}

	@Entao("^falha:Name is Required.$")
	public void falha_name_is_required() throws Throwable {
		Assert.assertTrue(!findElement(By.id("idInputStartDate")).getAttribute("value").isEmpty());
	}

	@Entao("^falha:Start Date is Required.$")
	public void falha_start_date_is_required() throws Throwable {
		Assert.assertTrue(!findElement(By.id("idInputName")).getAttribute("value").isEmpty());
	}

	public void timeout(final int tempo) {
		try {
			Thread.sleep(tempo * 1000);
		} catch (final InterruptedException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Método responsável pelo preenchimento de campos do tipo INPUT.
	 * Utiliza o By para localizar o componente.
	 * @return Retorna o componente alterado.
	 */
	public WebElement preencherInput(final By by, final String valor) {
		int i = 0;
		WebElement element = null;
		Exception e = null;

		while (i++ < MAX_SEGUNDOS) {
			timeout(1);
			try {

				element = findElement(by);
				element.click();
				element.clear();
				element.sendKeys(valor);

				e = null;
				i = MAX_SEGUNDOS;
			} catch (WebDriverException | NullPointerException ex) {

				// Tratamento de scroll da tela para preenchimento de campos ocultos atras do wizard.
				if (ex instanceof WebDriverException
						&& !(ex instanceof StaleElementReferenceException || ex instanceof InvalidElementStateException)) {
					if (ex.getMessage().contains("Element is not clickable at point")) {
						element = findElement(by);
						((JavascriptExecutor) driver)
						.executeScript("$(\"html\").scrollTop("
								+ (element.getLocation().getY() - 150)
								+ ")");
					}
				}

				e = ex;
				continue;
			}
		}

		if (e != null) {
			System.out.println("TIMEOUT: A busca pelo elemento excedeu o limite de espera de " + MAX_SEGUNDOS*2 + " segundos.");
			e.printStackTrace();
		}

		return element;
	}


	/**
	 * Método responsável pela execução do clique no componente.
	 * Utiliza o By informado para localizar o componente.
	 * @return Retorna o componente clicado.
	 */
	public WebElement clicar(final By by) {
		int i = 0;
		WebElement element = null;
		Exception e = null;

		while (i++ < MAX_SEGUNDOS) {
			timeout(1);
			try {

				element = findElement(by);
				element.click();

				e = null;
				i = MAX_SEGUNDOS;
			} catch (WebDriverException
					| NullPointerException ex) {

				// Tratamento de scroll da tela para preenchimento de campos ocultos atras do wizard.
				if (ex instanceof WebDriverException
						&& !(ex instanceof StaleElementReferenceException || ex instanceof InvalidElementStateException)) {
					if (ex.getMessage().contains("Element is not clickable at point")) {
						element = findElement(by);
						((JavascriptExecutor) driver)
						.executeScript("$(\"html\").scrollTop("
								+ (element.getLocation().getY() - 150)
								+ ")");
					}
				}

				e = ex;
				continue;
			}
		}

		if (e != null) {
			System.out.println("TIMEOUT: A busca pelo elemento excedeu o limite de espera de " + MAX_SEGUNDOS*2 + " segundos.");
			e.printStackTrace();
		}

		return element;
	}

	/**
	 * Método responsável pela localização do componente.
	 * Utiliza o By informado para localizar o componente.
	 * @return Retorna o componente clicado.
	 */
	public WebElement findElement(final By by) {
		int i = 0;
		WebElement element = null;
		Exception e = null;

		while (i++ < MAX_SEGUNDOS) {
			timeout(1);
			try {

				element = driver.findElement(by);

				e = null;
				i = MAX_SEGUNDOS;
			} catch (org.openqa.selenium.NoSuchElementException | NoSuchWindowException ex) {
				e = ex;
				continue;
			}
		}

		if (e != null) {
			System.out.println("TIMEOUT: A busca pelo elemento excedeu o limite de espera de " + MAX_SEGUNDOS + " segundos.");
			e.printStackTrace();
		}

		return element;
	}
}
