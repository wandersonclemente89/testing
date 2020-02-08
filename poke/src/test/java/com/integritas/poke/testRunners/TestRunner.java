package com.integritas.poke.testRunners;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features="resources/features",
glue="classpath:com/integritas/poke/steps",
plugin = {"pretty","json:target/cucumber-reports/Cucumber.json","html:target/cucumber-reports"})
public class TestRunner {

}
