import { browser } from 'protractor';
import { Given, When, Then } from 'cucumber';
import { GoogleHome } from '../pages/home.po';

let homepage = new GoogleHome();

Given('I navigate to google page', { timeout: 4 * 5000 }, async () => {
    await browser.waitForAngularEnabled(false);
    await browser.get('http://www.google.com')
});

Given('I search for {string}', async (name: string) => {
    await browser.waitForAngularEnabled(false);
    homepage.search(name);
});

When('I click in the search button',  ()=> {
    homepage.searchButton();
});

Then('page results is shown', { timeout: 4 * 5000 },async ()=> {
    await browser.driver.sleep(10000);
    await browser.pause();
});