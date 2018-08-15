*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Click on link of Article
    [Arguments]  ${item}
    click link  //*[@id="mw-content-text"]//a[contains(text(), '${item}')]
