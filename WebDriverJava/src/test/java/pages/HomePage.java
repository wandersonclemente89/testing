package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;


public class HomePage extends Base {
    @FindBy(name = "q")
    WebElement searchField;
    @FindBy(name = "btnK")
    WebElement searchBtn;
    public HomePage(WebDriver driver, String url) {
        super(driver);
        driver.get(url);

    }

    public void search(String name) {
        searchField.sendKeys(name);
    }

    public void pressBtn() {

        searchBtn.click();
    }
}