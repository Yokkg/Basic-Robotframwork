*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***

Test case 1
    Open Browser        url=http://www.ebay.com        browser=chrome
    input Text          name=_nkw       headphone
    Click element       id=gh-btn
    wait until element is visible       xpath=//h3[contains(text(), "Moondrop CHU High Performance Dynamic Driver IEMs in-Ear Earphone")]
    Click element       //h3[contains(text(), "Moondrop CHU High Performance Dynamic Driver IEMs in-Ear Earphone")]