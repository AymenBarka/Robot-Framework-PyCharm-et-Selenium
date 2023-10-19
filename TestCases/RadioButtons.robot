*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Variables ***
${browser}=    chrome
${url}=    https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/

*** Test Cases ***
Testing Radio Buttons and check box
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --ignore-certificate-errors
    Call Method    ${options}    add_argument    --disable-web-security
    Open Browser    ${url}    ${browser}    chrome_options=${options}
    maximize browser window
    select radio button    gender    male
    sleep    5
    select checkbox    option2
    select checkbox    option3
    sleep    3
    unselect checkbox    option2
    sleep    2
*** Keywords ***
