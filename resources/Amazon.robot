*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Go To  http://www.amazon.com
    Wait Until Page Contains  Today's Deals
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"

Select Product from Search Results
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Back to results

Add Product to Card
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Button  name=proceedToRetailCheckout