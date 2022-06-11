*** Settings ***
Library     SeleniumLibrary


# *** Variables ***
# ${lazada}       https://www.lazada.co.th/

*** Test Cases ***
Return Status 
    Open browser        https://www.lazada.co.th/     browser=chrome
    
Robot framework if else condition
    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//div[@data-module-id="campaignBanner"]
    IF  '${status}'=='True'
        Wait Until Element Is Visible    xpath=//i[contains(@class,"card-platform-campaign-banner-close lazada-icon lazada-ic-Close1 J_Close")]  
        Click Element    xpath=//i[contains(@class,"card-platform-campaign-banner-close lazada-icon lazada-ic-Close1 J_Close")]
    ELSE
        Wait Until Element Is Visible    xpath=//div[@id="anonLogin"]
        Click Element    xpath=//div[@id="anonLogin"]
    END
    Close Browser
