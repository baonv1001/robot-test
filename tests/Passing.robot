*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../resources/Scope.robot

*** Variables ***
# scope is global (for all test case)
# This value will override ${GLOBAL_VARIABLE} from other file
${GLOBAL_VARIABLE} =  From script file

*** Test Cases ***
User can search for products
    Begin Web Test  http://www.amazon.com  chrome

*** Keywords ***
Begin Web Test
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}
    Close Browser