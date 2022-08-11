*** Settings ***
Documentation  This is some basic info about the whole suite

*** Variables ***
${MY_VARIABLE} =  This is my input data

*** Test Cases ***
Set a variable in the test case
    [Tags]  Current
    ${my_new_variable} =  Set variable  My new variable
    Log  ${my_new_variable}

Variable demonstration
    Log  ${MY_VARIABLE}

Variable demonstration 2
    Log  ${MY_VARIABLE}

*** Keywords ***
