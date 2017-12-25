package com.elton.app.domain;

public enum BrowserOptions {

	IE(1, "webdriver.ie.driver"),
	FIREFOX(2, ""),
	EDGE(3, "webdriver.edge.driver"),
	CHROME(4, "webdriver.chrome.driver"),
	SAFARI(5, "");

	private int option;
	private String driver;

	BrowserOptions(final int option, final String driver) {
		this.option = option;
		this.driver = driver;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(final String driver) {
		this.driver = driver;
	}

	public int getOption() {
		return this.option;
	}

	public void setOption(final int option) {
		this.option = option;
	}
}
