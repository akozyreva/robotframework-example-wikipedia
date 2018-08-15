Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${XPATH_LOGIN_INPUT}  //*[@id="wpName1"]
${XPATH_PASSWORD_INPUT}  //*[@id="wpPassword1"]
${XPATH_LOGIN_BUTTON}  xpath=
*** Keywords ***
Input in field value
    [Arguments]  ${xpath}  ${value}
    input text  ${xpath}  ${value}

Push Button Log in
    click button  //*[@id="wpLoginAttempt"]
Verify Login Fail
    element text should be  //*[@id="userloginForm"]/form/div[1]/div/p  Incorrect username or password entered. Please try again.