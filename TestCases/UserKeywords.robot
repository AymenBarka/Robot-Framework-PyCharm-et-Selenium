*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
Resource    ../Resources/Resources.robot
*** Variables ***
${browser}=    chrome
${url}=    https://demo.opencart.com/index.php?route=account/login&language=en-gb
*** Test Cases ***
TC1
   ${PageTitle}=    LaunchBrowser    ${url}    ${browser}
    log to console    ${PageTitle}
    input text    name:email    mercury@yahoo.fr
    input text    name:password    Test@123


*** Keywords ***
LaunchBrowser
   #without arguments
   #open browser  ${url}   ${browser}
   # maximize browser window
   #with arguments
   [Arguments]    ${Appurl}    ${Appbrowser}
   open browser    ${Appurl}        ${Appbrowser}
   maximize browser window
   ${title}=    get title
   [Return]     ${title}