package br.com.elton.app.criterioAceitacao.cucumber.stepdefs;

import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootContextLoader;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.elton.app.Application;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(loader = SpringBootContextLoader.class, classes = Application.class)
public abstract class AbstractDefs {

}
