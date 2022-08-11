*** Settings ***
Library  SeleniumLibrary
Resource  PO/LandingPage.robot

*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in

Search for Products
    LandingPage.Load
    TopNav.Search for Products

search results contains relevant products
    SearchResults.Verify Search Completed


user selects a product from search results



Add Product to Card



Begin Checkout
