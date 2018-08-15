*** Settings ***
Documentation    Suite description
Resource    ../Resources/WikipediaBack/WikipediaAPI.robot

# https://www.mediawiki.org/wiki/API:Query/ru
*** Test Cases ***
Show info about 4 pages starting at the letter "T"
    WikipediaAPI.Show Info About 4 Pages

Show List of Bulgarian-language publishers
    WikipediaAPI.Show List of Bulgarian-language publishers