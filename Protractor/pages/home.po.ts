import {By, element, ExpectedConditions, browser} from 'protractor';
export class GoogleHome{
    searchField = element(By.name('q'));
    searchBtn = element(By.name('btnK'));

    async search(name:string){
        await browser.wait(ExpectedConditions.visibilityOf(this.searchField));
        this.searchField.sendKeys('protractor');
    }

    async searchButton(){
        await browser.wait(ExpectedConditions.visibilityOf(this.searchBtn));
        this.searchBtn.click();
    }
}