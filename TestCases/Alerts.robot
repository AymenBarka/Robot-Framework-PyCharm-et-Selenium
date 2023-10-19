*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Variables ***
${browser}=    chrome
${url}=    https://testautomationpractice.blogspot.com/
*** Test Cases ***
Handling Alerts
    open browser  ${url}  ${browser}
    maximize browser window
    click element    xpath:(//div[@class='widget-content']//button)[3]
    sleep    3
   # handle alert    accept
  # handle alert    dismiss
  #handle alert    leave
  alert should be present    Press a button!
*** Keywords ***
