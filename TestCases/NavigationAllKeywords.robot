*** Settings ***
Library    SeleniumLibrary
Test Teardown    close all browsers
*** Variables ***
${browser}=    chrome
${url}=    https://www.google.com/
${url1}=    https://www.bing.com/
*** Test Cases ***
Navigation Test
    open browser    ${url}   ${browser}
    ${loc}=    get location
    log to console    ${loc}
    sleep    3
   go to    ${url1}
       ${loc}=    get location
    log to console    ${loc}
    sleep    3
    go back

     ${loc}=    get location
    log to console    ${loc}
    sleep    3
*** Keywords ***