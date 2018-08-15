*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${XPATH_LOGIN_BUTTON}=  //*[@id="pt-login"]/a

*** Keywords ***
Load
    go to    ${URL}
    maximize browser window

Click to Login
    click link  ${XPATH_LOGIN_BUTTON}