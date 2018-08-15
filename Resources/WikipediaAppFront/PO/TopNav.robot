*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR}  //*[@id="searchInput"]
${TOPNAV_SEARCH_BUTTON}  //*[@id="searchButton"]

*** Keywords ***
Search for Products
    [Arguments]  ${item}
    Enter Search Term  ${item}
    Submit Search

Enter Search Term
    [Arguments]  ${item}
    Input Text  ${TOPNAV_SEARCH_BAR}  ${item}

Submit Search
    Click Button  ${TOPNAV_SEARCH_BUTTON}