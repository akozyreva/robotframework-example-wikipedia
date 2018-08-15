*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
Begin web test
    Open browser    about:blank  ${BROWSER}

End web Test (common)
    Close Browser

Verify Page Loaded
    [Arguments]  ${item}
    Wait Until Page Contains  ${item}