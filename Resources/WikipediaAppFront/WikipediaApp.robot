*** Settings ***
Documentation    Suite description
Resource  ../WikipediaAppFront/PO/MainPage.robot
Resource  ../WikipediaAppFront/PO/Article.robot
Resource  ../WikipediaAppFront/PO/TopNav.robot
Resource  ../WikipediaAppFront/PO/SearchResults.robot
Resource  ../WikipediaAppFront/PO/Login.robot
Resource  ../../Resources/Common.robot

*** Keywords ***
Open Site
    MainPage.load
    Common.Verify Page Loaded  From today's featured article

Search for article
    MainPage.load
    Common.Verify Page Loaded  From today's featured article
    TopNav.Search for Products  ${SEARCH_TERM}
    Article.Verify Search Completed  Car

Partial Search
    MainPage.load
    Common.Verify Page Loaded  From today's featured article
    TopNav.Search for Products  ${PARTIAL_SEARCH_TERM}
    Common.Verify Page Loaded  CA or ca may refer to:
    SearchResults.Click on link of Article  Calcium
    Article.Verify Search Completed  Calcium

Search and Absence of Results
    MainPage.load
    Common.Verify Page Loaded  From today's featured article
    TopNav.Search for Products  ghghghhghg
    Common.Verify Page Loaded  There were no results matching the query.

Fail Login
    MainPage.load
    Common.Verify Page Loaded  From today's featured article
    MainPage.Click to Login
    Common.Verify Page Loaded  Don't have an account?
    Login.Input in field value  ${XPATH_LOGIN_INPUT}  ${INVALID_LOGIN_EMAIL}
    Login.Input in field value  ${XPATH_PASSWORD_INPUT}  ${INVALID_LOGIN_PASSWORD}
    Login.Push Button Log in
    Login.Verify Login Fail