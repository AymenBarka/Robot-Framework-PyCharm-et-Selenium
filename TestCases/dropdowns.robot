*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Variables ***
${browser}=    chrome
${url}=    https://sauravsarkar-codersarcade.github.io/ca_automationpractice.com/

*** Test Cases ***
Handling DropDown and Lists
    open browser  ${url}  ${browser}
    maximize browser window
    select from list by label    option    Option 2
    sleep    3
    select from list by index    option    3
    sleep    3
    #List Box
    select from list by label    Optionwithcheck[]    Option 3
    select from list by label    Optionwithcheck[]    Option 1
    unselect from list by label  Optionwithcheck[]    Option 3
    sleep    3
*** Keywords ***
