package br.com.elton.app.criterioAceitacao.cucumber.stepdefs;

import org.openqa.selenium.WebDriver;

public abstract class TestCommon {

	protected WebDriver driver;
	public static final int MAX_SEGUNDOS = 30;

	public TestCommon() {
		driver = Config.driver;
	}

	public void timeout(final int tempo) {
		try {
			Thread.sleep(tempo * 1000);
		} catch (final InterruptedException e) {
			e.printStackTrace();
		}
	}

}
