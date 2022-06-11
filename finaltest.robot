*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/search_page.robot

*** Test case ***
# TC_01
#     # Open Browser        url=http://www.ebay.com        browser=chrome
#     Input Text       name=_nkw       Television    
#     Click element       id=gh-btn
#     # Wait until element is visible       xpath=//div[@id="srp-river-results"]//h3[@class="s-item__title"]
#     ${elementList}=     Get webelements     xpath=//div[@id="srp-river-results"]//h3[@class="s-item__title"]
#     FOR     ${i}  IN  @{elementList}
#         ${Text}=     Get Text    ${i}
#        Log To Console       ${text} 
#     END

TC_02
    home_page.Open amazon website
    home_page

    #{CURDIR} = builtin