*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login-resources.robot
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Test Cases ***      username                   pwd
Right user empty pass    admin@yourstore.com        ${empty}
Right user wrong pass    admin@yourstore.com         xyz
wrong user right pass    admn@yourstore.com          admin
wrong user empty pass    admn@yourstore.com         ${empty}
wrong user wrong pass    admn@yourstore.com         xyz
*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${pwd}
    Input Username  ${username}
    Input pwd   ${pwd}
    Click login button
    Error message should be visible