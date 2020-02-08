package automation.appium;


import static java.time.Duration.ofSeconds;

import java.net.MalformedURLException;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import io.appium.java_client.MobileBy;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import io.appium.java_client.android.AndroidTouchAction;
import io.appium.java_client.touch.LongPressOptions;
import io.appium.java_client.touch.TapOptions;
import io.appium.java_client.touch.offset.ElementOption;

public class GesturesTest extends Base {

	AndroidDriver<AndroidElement> driver;
	AndroidTouchAction touchAction;
	
	@BeforeEach
	public void setUp() throws MalformedURLException, InterruptedException {
		driver = capabilities();
		touchAction = new AndroidTouchAction(driver);
	}
	
	@Test
	public void longPressTest() {
		driver.findElementByXPath("//android.widget.TextView[@text='Views']").click();
		//Tap		
		AndroidElement expListsElement = driver.findElementByXPath("//android.widget.TextView[@text='Expandable Lists']");
		touchAction.tap(new TapOptions().withElement(ElementOption.element(expListsElement))).perform();
		//Tap
		AndroidElement customAdapterElement = driver.findElementByXPath("//android.widget.TextView[@text='1. Custom Adapter']");
		touchAction.tap(new TapOptions().withElement(ElementOption.element(customAdapterElement))).perform();
		//Long Press
		AndroidElement peopleNamesElement = driver.findElementByXPath("//android.widget.TextView[@text='People Names']");
		touchAction.longPress(new LongPressOptions().withElement(ElementOption.element(peopleNamesElement))).perform();
		//Assertion
		AndroidElement popUpTitle = driver.findElementById("android:id/title");
		Assertions.assertEquals("Sample action", popUpTitle.getText());
	}
	
	@Test
	public void swippingTest() {
		driver.findElementByXPath("//android.widget.TextView[@text='Views']").click();
		driver.findElementByXPath("//android.widget.TextView[@text='Date Widgets']").click();
		driver.findElementByXPath("//android.widget.TextView[@text='2. Inline']").click();
		driver.findElementsByClassName("android.widget.RadialTimePickerView$RadialPickerTouchHelper").get(8).click();
		
		AndroidElement firstTimeElement = driver.findElementsByClassName("android.widget.RadialTimePickerView$RadialPickerTouchHelper").get(3);
		AndroidElement secondTimeElement = driver.findElementsByClassName("android.widget.RadialTimePickerView$RadialPickerTouchHelper").get(6);
		touchAction.longPress(new LongPressOptions().withElement(ElementOption.element(firstTimeElement)).withDuration(ofSeconds(1)))
				   .moveTo(ElementOption.element(secondTimeElement))
				   .release()
				   .perform();
	}
	
	@Test 
	public void scrollingTest() {
		driver.findElementByXPath("//android.widget.TextView[@text='Views']").click();
		driver.findElement(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector()).scrollIntoView(text(\"WebView\"));"));
	}
	
	@Test
	public void dragAndDropTest() {
	     driver.findElementByXPath("//android.widget.TextView[@text='Views']").click();
	     driver.findElementByXPath("//android.widget.TextView[@text='Drag and Drop']").click();
	     AndroidElement source=driver.findElementsByClassName("android.view.View").get(0);
	     AndroidElement destination=driver.findElementsByClassName("android.view.View").get(1);
	     
	     touchAction.longPress(ElementOption.element(source)).moveTo(ElementOption.element(destination)).release().perform();
	}
	
	@Test
	public void androidKeysTest() {
	     driver.findElementByXPath("//android.widget.TextView[@text='Views']").click();
	}
}