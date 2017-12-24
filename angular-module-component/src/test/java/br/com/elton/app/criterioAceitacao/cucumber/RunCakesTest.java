package br.com.elton.app.criterioAceitacao.cucumber;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(monochrome = true, features = "classpath:br/com/elton/app/criterioAceitacao/cucumber/incluirTask.feature", tags = "~@skip", strict = false)
public class RunCakesTest {// NOSONAR Illegal
	// Classe de apoio ao cucumber
}
