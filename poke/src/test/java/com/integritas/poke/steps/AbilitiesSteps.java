package com.integritas.poke.steps;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.HashMap;
import java.util.List;

import com.integritas.poke.ApiHandler;

import io.cucumber.java.en.Then;
import io.restassured.response.Response;

public class AbilitiesSteps {

	ApiHandler apiHandler = ApiHandler.getInstance();
	
	@Then("all abilities have a name")
	public void all_abilities_have_a_name() {
		Response response = apiHandler.getResponse();
		List<HashMap<String, String>> resultList = response.jsonPath().getList("results");		
		for (int i = 0; i < resultList.size(); i++) {
			assertNotNull(resultList.get(i).get("name"));
		}
		
	}

	@Then("the proper ability {string} is returned")
	public void the_proper_ability_battle_armor_is_returned(String abilityName) {
	    Response response = apiHandler.getResponse();
	    assertEquals(abilityName, response.jsonPath().getString("name"));
	}
}
