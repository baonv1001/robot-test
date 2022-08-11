*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../resources/Scope.robot


*** Variables ***
# scope is global (for all test case)
# This value will override ${GLOBAL_VARIABLE} from other file
${GLOBAL_VARIABLE} =  From script file

*** Test Cases ***
Create and log a variable
    # scope in test case
    ${my_variable} =  Set variable  Some information
    Log  ${my_variable}

Access a variable
    Log  ${GLOBAL_VARIABLE}


*** Keywords ***
