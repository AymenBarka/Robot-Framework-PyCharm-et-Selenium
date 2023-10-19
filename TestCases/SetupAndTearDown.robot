*** Settings ***
Suite Setup    log to console    Opening browser
Suite Teardown    log to console    Closing browser

Test Setup    log to console     Loging to application
Test Teardown    log to console    logout from applicatio,

*** Test Cases ***
TC1 prepaired recharge
    log to console    this is prepaid recharge test case
TC2 postpaid recharge
    log to console    this is postpaid recharge testcase
TC3 Search
    log to console    this is search test case
TC4 Advanced Searched
    log to console    This is advanced search test case

