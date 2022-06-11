*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${input_text}=      id=twotabsearchtextbox
${search_button}=       id=nav-search-submit-button

*** Keywords ***
Open amazon website
    [Arguments]     ${url}      ${browser}
    SeleniumLibrary.Open browser    https://www.amazon.com/      gc

Search product by Keywords
    [Arguments]     ${locator}      ${Keywords}
    SeleniumLibrary.Input text      ${locator}      ${Keywords}
    SeleniumLibrary.Click element       ${locator}
    *** Test Cases ***