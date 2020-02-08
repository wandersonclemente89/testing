package com.integritas.poke.steps;

import static org.hamcrest.Matchers.equalTo;

import com.integritas.poke.ApiHandler;

import io.cucumber.java.en.Then;

public class BerriesSteps{

	ApiHandler apiHandler = ApiHandler.getInstance();
	
	@Then("I can see the previous and next page link")
	public void i_can_see_the_previous_page_link() {
		apiHandler.setJson(apiHandler.getResponse().then());
		apiHandler.getJson().assertThat().body("previous", equalTo("https://pokeapi.co/api/v2/berry?offset=0&limit=5"));
		apiHandler.getJson().assertThat().body("next", equalTo("https://pokeapi.co/api/v2/berry?offset=10&limit=5"));
	}
}
