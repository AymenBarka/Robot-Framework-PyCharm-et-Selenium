*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}      ${Browser}
    open browser  ${SiteUrl}     ${Browser}
    maximize browser window
Enter UserName
     [Arguments]  ${username}
     input text  ${txt_LoginUserName}  ${username}
Enter Password
     [Arguments]  ${password}
     input text  ${txt_LoginPassword}  ${password}
Click SignIn
  click button  ${btn_SIGNIN}

Verify Sucessful Login
  page should contain    Dashboard

Close my Browsers
  close browser
