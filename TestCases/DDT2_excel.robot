*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login-resources.robot
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=test

Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Test Cases ***
LoginTestWithExcel using ${username} And ${pwd}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${pwd}
    Input Username    ${username}
    Input pwd    ${pwd}
    Click login button
    Error message should be visible