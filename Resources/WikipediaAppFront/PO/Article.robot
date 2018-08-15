*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${XPATH_H1_ARTICLE}  //*[@id="firstHeading"]
${XPATH_BLOCK_CONTETNT}  //*[@id="toc"]

*** Keywords ***
Verify Search Completed
    [Arguments]  ${item}
    Element Text Should Be  ${XPATH_H1_ARTICLE}   ${item}
    page should contain element  ${XPATH_BLOCK_CONTETNT}