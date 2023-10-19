*** Settings ***
Library      SeleniumLibrary
Test Teardown    close browser
*** Variables ***
${url}=    https://demo.nopcommerce.com/
${browser}=    chrome
${email}=  aymenbarka@yahoo.fr
${password}=  Test@123

*** Test Cases ***
LoginTest
  Open Browser    ${url}    ${browser}
  click link    xpath://a[@class='ico-login']
  Enter Email and Password  ${email}    ${password}

  click element    xpath://button[@class='button-1 login-button']
*** Keywords ***
Enter Email and Password
    [Arguments]    ${email}    ${password}
     input text    id:Email    ${email}
     input text    id:Password    ${password}