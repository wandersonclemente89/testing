package pages;

import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;


public class HomePage extends Base {
    public HomePage(WebDriver driver, String url) {
		super(driver);
		driver.get(url);
		
	}

	@FindBy(name = "q") WebElement searchField;
    @FindBy(name = "btnK") WebElement searchBtn;

    public void search(String name){
        searchField.sendKeys(name);
    }

    public void pressBtn(){
    
        searchBtn.click();
    }
}