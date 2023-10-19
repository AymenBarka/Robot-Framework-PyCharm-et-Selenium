*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Variables ***
${browser}=    chrome
${url}=    https://demowebshop.tricentis.com/register
*** Test Cases ***
Register Test
    ${speed}=    get selenium speed
    log to console     ${speed}
    open browser  ${url}  ${browser}
    maximize browser window
    set selenium speed    3
    select radio button    Gender    M
    input text    name:FirstName    aymen
    input text    name:LastName     barka
    input text    name:Email   aymenbarka@yahoo.fr
    input text    name:Password    Test@123
    input text    name:ConfirmPassword    Test@123
    ${speed}=    get selenium speed
    log to console     ${speed}


*** Keywords ***
