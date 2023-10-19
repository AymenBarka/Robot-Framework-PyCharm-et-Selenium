*** Settings ***
Library    SeleniumLibrary
Test Teardown    close all browsers
*** Variables ***
${browser}=    chrome
${url}=    https://demo.automationtesting.in/Windows.html
*** Test Cases ***
Tabbed Windows Test
    open browser    ${url}   ${browser}
    maximize browser window
    click element    xpath:(//button[@class='btn btn-info'])[1]
    sleep    3
    switch window    title=Selenium
    click element    xpath://span[text()='Projects']
    sleep    3



*** Keywords ***