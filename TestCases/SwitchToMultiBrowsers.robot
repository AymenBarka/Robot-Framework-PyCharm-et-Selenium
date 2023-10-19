*** Settings ***
Library    SeleniumLibrary
Test Teardown    close all browsers
*** Variables ***
${browser}=    chrome
${url}=    https://www.google.com/
${url1}=    https://www.bing.com/
*** Test Cases ***
Multi Browsers Test
    open browser    ${url}   ${browser}
    maximize browser window

    sleep    3
   open browser    ${url1}   ${browser}
    maximize browser window
    switch browser    1
    ${title1}=    get title
    log to console    ${title1}
    switch browser    2
    ${title1}=    get title
    log to console    ${title1}
*** Keywords ***