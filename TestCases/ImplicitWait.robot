*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Variables ***
${browser}=    chrome
${url}=    https://demowebshop.tricentis.com/register
*** Test Cases ***
Register Test

    open browser  ${url}  ${browser}
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}
    set selenium implicit wait    10 seconds
    select radio button    Gender    M
    input text    name:FirstName1    aymen
    input text    name:LastName     barka
    input text    name:Email   aymenbarka@yahoo.fr
    input text    name:Password    Test@123
    input text    name:ConfirmPassword    Test@123

*** Keywords ***
