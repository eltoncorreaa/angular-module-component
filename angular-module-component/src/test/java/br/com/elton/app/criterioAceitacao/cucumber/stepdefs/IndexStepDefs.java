package br.com.elton.app.criterioAceitacao.cucumber.stepdefs;

import cucumber.api.java.pt.Dado;

public class IndexStepDefs extends TestCommon{

	@Dado("^o momento que eu abro a pagina inicial da aplicação$")
	public void abro_pagina_inicial_aplicacao() {
		driver.get("http://localhost:8091/");
	}
}
