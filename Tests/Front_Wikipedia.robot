*** Settings ***
Documentation  This is some basic info about the whole script
Resource    ../Resources/WikipediaAppFront/WikipediaApp.robot
Resource    ../Resources/Common.robot

Test Setup  Common.Begin web test
Test Teardown  Common.End web Test (common)


*** Variables ***
${BROWSER}=  chrome
${URL}=  https://en.wikipedia.org
${SEARCH_TERM}=  car
${PARTIAL_SEARCH_TERM}=  ca
${INVALID_LOGIN_EMAIL}=  test@test.com
${INVALID_LOGIN_PASSWORD}=  Qq12345678

*** Test Cases ***
User can open Wikipedia
    [Documentation]  Test,in which user open Wikipedia and search article
    [Tags]    Wikipedia front
    WikipediaApp.Open Site

User can search article
    [Documentation]  Test,in which user open Wikipedia and search article
    [Tags]    Wikipedia front
    WikipediaApp.Search for article


User can search article by partial search
    [Documentation]  Test,in which user open Wikipedia and search article
    [Tags]    Wikipedia front
    WikipediaApp.Partial Search

User can't search if word is unreal
    [Documentation]  Test,in which user open Wikipedia and search article
    [Tags]    Wikipedia front
    WikipediaApp.Search and Absence of Results

User can't log in because email and password are fakes
    WikipediaApp.Fail Login