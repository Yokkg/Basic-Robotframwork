*** Settings ***
Library     SeleniumLibrary

*** Variables ***
@{hero}     ironman     batman      captain     superman        hulk        shazam

*** Test Cases ***
For loop
    FOR     ${index}    IN  @{hero}
        Continue For Loop If        "${index}"=="captain"
        Log To Console      ${index}
        Exit For Loop If    "${index}"=="blackwidow"
    END