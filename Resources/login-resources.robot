*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${login_url}     https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${Browser}      chrome
*** Keywords ***
Open My Browser
    open browser  ${login_url}  ${Browser}

Close Browsers
  close all browsers

Open Login Page
    go to    ${login_url}
Input Username
    [Arguments]    ${username}
     input text    id:Email    ${username}
Input pwd
   [Arguments]    ${pwd}
     input text    id:Password    ${pwd}
Click login button
    click element    xpath://button[@class='button-1 login-button']

Click logout link
  click link  logout

Error message should be visible
  page should contain    Login was unsuccessful

Dashboard page should be visible
  page should contain  Dashboard
