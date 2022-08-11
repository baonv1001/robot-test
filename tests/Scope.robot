*** Settings ***
Documentation  This is some basic info about the whole suite

*** Variables ***
${GLOBAL_VARIABLE} =  This is global variable

*** Test Cases ***
Create and log a variable
    ${my_variable} =  Set variable  Some information
    Log  ${my_variable}

Access a variable
    Log  ${GLOBAL_VARIABLE}


*** Keywords ***
