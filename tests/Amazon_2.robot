*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../resources/Amazon.robot
Resource  ../resources/Common.robot

# run before all test case
Suite Setup  Insert Testing Data
# run before each test
Test Setup  Begin Web Test

# run after each test
Test Teardown  End Web Test
# run after all test case
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info the test
    [Tags]  Smoke
    Amazon.Search for Products

User must sign in to checkout
    [Documentation]  This is some basic info the test
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Card
    Amazon.Begin Checkout

*** Keywords ***
