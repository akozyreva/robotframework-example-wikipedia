*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  SeleniumLibrary

*** Variables ***
${URL_FOR_DEFINING_INFO_ABOUT_PAGES}=  /w/api.php?action=query&generator=allpages&gaplimit=4&gapfrom=T&prop=info&format=json
${URL_FOR_DEFINING_INFO_ABOUT_PUBLISHERS}=  w/api.php?action=query&list=allcategories&acprefix=List+of&formatversion=2&format=json
${SESSION_URL}=  https://en.wikipedia.org

*** Keywords ***
Show Info About 4 Pages
    ${response}=  Create Session And Send Get Request  ${URL_FOR_DEFINING_INFO_ABOUT_PAGES}
    # Check the Response status
    Should Be Equal As Strings  ${response.status_code}  200
    # Check the Response body
    ${json} =  Set Variable  ${response.json()}
    # define keys of pairs of JSON
    Log  ${json['query']['pages'].keys()}
    # create a list for defining first element
    ${list}  convert to list  ${json['query']['pages'].keys()}
    Log  ${list[0]}
    Dictionary Should Contain Item    ${response.json()['query']['pages']['${list[0]}']}  title  T


Show List of Bulgarian-language publishers
    ${response}=  Create Session And Send Get Request  ${URL_FOR_DEFINING_INFO_ABOUT_PUBLISHERS}
    # Check the Response status
    Should Be Equal As Strings  ${response.status_code}  200
    # Check the Response body
    ${json} =  Set Variable  ${response.json()}
    Log  ${response.json()['query']['allcategories'][0]['category']}
    Should Be Equal As Strings  ${response.json()['query']['allcategories'][0]['category']}  List of 20th-century terrorist incidents

Create Session And Send Get Request
    [Arguments]  ${query_url}
    # Create the Session
    Create Session  session  ${SESSION_URL}
    # Make the call (and capture the response in a variable)
    ${response}=  Get Request   session  ${query_url}
    [Return]  ${response}


