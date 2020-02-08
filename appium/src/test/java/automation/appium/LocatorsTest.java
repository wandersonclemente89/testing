package automation.appium;


import java.net.MalformedURLException;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import io.appium.java_client.MobileBy;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;

public class LocatorsTest extends Base {

	AndroidDriver<AndroidElement> driver;
	
	@BeforeEach
	public void setUp() throws MalformedURLException, InterruptedException {
		driver = capabilities();
	}
	
	@Test
	public void firstTest() {
		// by Xpath attributes
		driver.findElementByXPath("//android.widget.TextView[@text='Preference']").click();
		// by AndroidUIAutomator
		driver.findElement(MobileBy.AndroidUIAutomator("text(\"3. Preference dependencies\")")).click();
		// By Id (resource-id)
		driver.findElementById("android:id/checkbox").click();
		// By Xpath Indexes
		driver.findElementByXPath("(//android.widget.RelativeLayout)[2]").click();
		//By Class
		driver.findElementByClassName("android.widget.EditText").sendKeys("Cleide");
		// By Class Indexes
		driver.findElementsByClassName("android.widget.Button").get(1).click();
	}
	
}
