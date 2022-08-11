*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info the test
    [Tags]  Smoke
    Open Browser  http://amazon.com  chrome
    Click Image  Keyboards

    Close Browser

*** Keywords ***
