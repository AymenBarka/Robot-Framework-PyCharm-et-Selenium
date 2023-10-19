*** Settings ***
Library    SeleniumLibrary
test teardown    close all browsers

*** Variables ***
${browser}=    chrome
${url}=    https://demowebshop.tricentis.com/register
${url1}=    https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/
*** Test Cases ***
MyTestCase
    open browser   ${url}   ${browser}
    maximize browser window

    open browser  ${url1}  ${browser}
    maximize browser window
    #close browser
    #close all browsers


*** Keywords ***
