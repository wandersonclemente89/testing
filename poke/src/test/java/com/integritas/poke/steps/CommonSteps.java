package com.integritas.poke.steps;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.assertEquals;

import com.integritas.poke.ApiHandler;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.http.ContentType;

public class CommonSteps  {

	ApiHandler apiHandler = ApiHandler.getInstance();
	
	@Given("I wants to see all {string}")
	public void i_want_to_see(String entities) {
		apiHandler.getBuilder().setContentType(ContentType.JSON);
	}

	@When("I send a request to the {string} resource")
	public void i_send_a_request_to_the_resource(String resource) {
		apiHandler.setRequest(apiHandler.getBuilder().build());
		apiHandler.setResponse(given().spec(apiHandler.getRequest()).when().log().all().get("https://pokeapi.co/api/v2/" + resource));
	}
	
	@Then("a list with {int} {string} is returned")
	public void a_list_is_returned(int numberOfResults, String entities) {
		apiHandler.setJson(apiHandler.getResponse().then());
		apiHandler.getJson().assertThat().body("results.size()", equalTo(numberOfResults));
	}

	@Then("the returned http status code is {int}")
	public void the_returned_http_status_code_is(int statusCode) {
		assertEquals(statusCode, apiHandler.getResponse().getStatusCode());
	}
	
	@Given("I set the limit to {int}")
	public void i_set_the_limit_to(int limit) {
		apiHandler.getBuilder().addQueryParam("limit", limit);
	}

	@Given("I set offset to {int}")
	public void i_set_offset_to(int offset) {
		apiHandler.getBuilder().addQueryParam("offset", offset);
	}
	
	@Given("I wants to see a {string}")
	public void i_wants_to_see_a(String string) {
		i_want_to_see(string);
	}

	@When("I send the id {int} of the {string} resource")
	public void i_send_the_of_the(Integer int1, String resource) {
		apiHandler.setRequest(apiHandler.getBuilder().build());
		apiHandler.setResponse(given().spec(apiHandler.getRequest())
				.when().log().all().get("https://pokeapi.co/api/v2/" + resource + "/" + int1));

	}
	
}
