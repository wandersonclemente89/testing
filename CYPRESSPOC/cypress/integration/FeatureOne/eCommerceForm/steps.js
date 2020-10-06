import { When, Then, Given } from 'cypress-cucumber-preprocessor/steps'

import HomePage from '../../../support/pageObjects/HomePage'

const homePage = new HomePage()


Given('I access the angularPratice home page', function(){
    cy.fixture('example').then(function (data) {
        this.data = data
    })
    cy.visit("/angularpractice/")
})

Given('set name as Bob', function(){
    homePage.getEditBox().type(this.data.name)
})

Given('set gender as Female', function(){
    homePage.getGender().select(this.data.gender)
})