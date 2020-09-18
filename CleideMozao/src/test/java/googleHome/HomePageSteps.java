package googleHome;

import base.BaseTest;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import pages.HomePage;

public class HomePageSteps extends BaseTest{
    

	
	@Given("I navigate to the {string}")
	public void x(String url) {
		HomePage homePage = new HomePage(getDriver(),url);
		homePage.search("Web driver");
		homePage.pressBtn();
	}
	
	@Then("I close the Browser")
	public void closeNavageador() {
		getDriver().quit();
	}
	

}