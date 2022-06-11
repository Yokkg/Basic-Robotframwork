*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

1
    Open Browser    http://www.ebay.com/   gc
    Maximize Browser Window
    Input Text      name=_nkw        television
    Click Element   id=gh-btn
    @{elementList}=  Get WebElements    //h3[@class='s-item__title']
        FOR  ${i}  IN  @{elementList}
        ${text}=  Get Text  ${i}
        Log to console  ${text}
    END