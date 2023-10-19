*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Variables ***
${browser}=    chrome
${url}=    https://www.selenium.dev/selenium/docs/api/java/index
*** Test Cases ***
Testing Frames
    open browser    ${url}   ${browser}
    maximize browser window
    sleep    3


*** Keywords ***
