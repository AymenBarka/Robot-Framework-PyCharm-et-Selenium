*** Settings ***
Library    SeleniumLibrary
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
