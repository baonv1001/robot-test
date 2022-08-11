*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info the test
    [Tags]  Smoke
    Open Browser  http://amazon.com  chrome
#    Sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
#    Sleep  3s
#    Click Button  css=#nav-search-submit-button
    Click Button  xpath=//*[@id="nav-search-submit-button"]
#    Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.s-opposite-dir.sg-row > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > div > div > div > div.s-product-image-container.aok-relative.s-image-overlay-grey.s-text-center.s-padding-left-small.s-padding-right-small.puis-spacing-small.s-height-equalized > span > a
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div[1]/span/a

#    Close Browser

*** Keywords ***
