package com.elton.app.config;

import java.io.IOException;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;

import com.elton.app.domain.BrowserOptions;

public class Config {

	public static WebDriver getWebDriver(final BrowserOptions browser) throws IOException {
		DesiredCapabilities capabilities = null;
		WebDriver driver = null;

		switch (browser) {
		case IE: {
			loadDriver(browser, "IEDriverServer.exe");

			capabilities = DesiredCapabilities.internetExplorer();
			capabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);
			capabilities.setCapability(InternetExplorerDriver.IGNORE_ZOOM_SETTING, true);
			capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);

			driver = new InternetExplorerDriver(capabilities);
			break;
		}
		default:
			break;
		}
		;
		return driver;
	}

	private static void loadDriver(final BrowserOptions browser, final String webDriver) {
		if (!webDriver.isEmpty()) {
			System.setProperty(browser.getDriver(), "src\\test\\resources\\drivers\\"+webDriver);
		}
	}
}
