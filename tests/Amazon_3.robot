*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../resources/Amazon.robot
Resource  ../resources/Common.robot

# run before all test case
Suite Setup  Insert Testing Data
# run before each test
Test Setup  Common.Begin Web Test

# run after each test
Test Teardown  Common.End Web Test
# run after all test case
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
Logged out user can search for products
    [Tags]  Current
    Amazon.Search for Products

Logged out user can view a product
    Amazon.Search for Products
    Amazon.Select Product from Search Results

Logged out user can add product to cart
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Card

Logged out user must sign in to checkout
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Card
    Amazon.Begin Checkout

*** Keywords ***
