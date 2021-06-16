package pages;

import io.appium.java_client.android.AndroidElement;
import org.openqa.selenium.support.FindBy;

public class Auth {

    @FindBy(id = "com.dkxsti.appcensoregcadic:id/edtUser")
    private AndroidElement userInput;

    @FindBy(id = "com.dkxsti.appcensoregcadic:id/edtPassword")
    private AndroidElement passInput;

    @FindBy(id = "com.dkxsti.appcensoregcadic:id/tvTotalPostesImp")
    private AndroidElement authButton;



    public Auth insertName(String username){
        userInput.sendKeys(username);
        return this;
    }

    public Auth insertPassword(String password){
        passInput.sendKeys(password);
        return this;
    }

    public String clickOnAuthButton(){
        return authButton.getText();
    }

    public HomePage doLogin(String user, String pass){
        insertName(user);
        insertPassword(pass);
        return clickOnAuthButton();
    }

}
