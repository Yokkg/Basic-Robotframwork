*** Settings ***
# import file ต่างๆ
Library  SeleniumLibrary

# ประกาศ
*** Variables ***
${human}    Thai

# *** Keywords ***

*** Test Cases ***
Test case No.1
    Log     ${human}
Test case No.2
    Open Browser        url=https://www.ebay.com        browser=chrome
    input Text          name=_nkw       mobile
    Click element       id=gh-btn


# xpath
# //input[@name=""]
# //div[@hello="hi_username"]/input

#ex4 use contains
# //div[contains(@hello, "hi_username")]
# //div[contains(., "username")]

# โจทย์ ebay+search+เข้าหน้าโปรดักดีเทล