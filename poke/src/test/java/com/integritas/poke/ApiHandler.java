package com.integritas.poke;

import io.restassured.builder.RequestSpecBuilder;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSpecification;

public final class ApiHandler {
	
	private static ApiHandler instance;
	private Response response;
	private ValidatableResponse json;
	private RequestSpecification request;
	private static RequestSpecBuilder builder;
	
	private ApiHandler() {
		
	}
	
	public static synchronized ApiHandler getInstance() {
		builder = new RequestSpecBuilder();
		if (instance == null) {
			instance = new ApiHandler();
		}
		return instance;
	}
	

	public Response getResponse() {
		return response;
	}

	public void setResponse(Response response) {
		this.response = response;
	}

	public ValidatableResponse getJson() {
		return json;
	}

	public void setJson(ValidatableResponse json) {
		this.json = json;
	}

	public RequestSpecification getRequest() {
		return request;
	}

	public void setRequest(RequestSpecification request) {
		this.request = request;
	}

	public RequestSpecBuilder getBuilder() {
		return builder;
	}

	public void setBuilder(RequestSpecBuilder builder) {
		ApiHandler.builder = builder;
	}

}
