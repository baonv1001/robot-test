*** Settings ***
Documentation  This is some basic info about the whole suite

*** Variables ***
@{MY_VARIABLE} =  This is my input data  Hello there  This is value 2

*** Test Cases ***
Set a variable in the test case
    [Tags]  list
    Log  ${MY_VARIABLE}[0]
    Log  ${MY_VARIABLE}[1]
    Log  ${MY_VARIABLE}[2]

Variable demonstration 2
    [Tags]  list_2
    ${my_list_variable} =  Set variable  Item1  Item2  Item3
    Log  ${my_list_variable}[0]
    Log  ${my_list_variable}[1]
    Log  ${my_list_variable}[2]

*** Keywords ***
