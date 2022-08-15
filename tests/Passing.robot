*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../resources/Scope.robot

*** Variables ***
# scope is global (for all test case)
# This value will override ${GLOBAL_VARIABLE} from other file
${GLOBAL_VARIABLE} =  From script file

*** Test Cases ***
User can search for products
    ${url_and_browser} =  Set variable  http://www.amazon.com  chrome
#    Begin Web Test  http://www.amazon.com  chrome
    Begin Web Test  ${url_and_browser}

*** Keywords ***
#Begin Web Test
#    [Arguments]  ${url}  ${browser}
#    Open Browser  ${url}  ${browser}
#    Close Browser

Begin Web Test
    # why do not use @ here ?
    [Arguments]  ${url_and_browser}
    Open Browser  ${url_and_browser}[0]  ${url_and_browser}[1]
    Close Browser