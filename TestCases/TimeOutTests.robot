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
    ${time}=    get selenium timeout
    log to console   ${time}
    set selenium timeout    10 seconds
    wait until page contains    Registration
    select radio button    Gender    M
    input text    name:FirstName    aymen
    input text    name:LastName     barka
    input text    name:Email   aymenbarka@yahoo.fr
    input text    name:Password    Test@123
    input text    name:ConfirmPassword    Test@123

*** Keywords ***
