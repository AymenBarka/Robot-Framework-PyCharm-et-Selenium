*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
*** Variables ***
${SiteUrl}=    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${Browser}=    chrome
${user}=    admin@yourstore.com
${pwd}=    admin
*** Test Cases ***
Login Test
    open my browser    ${SiteUrl}      ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click SignIn
    sleep    3
    Verify Sucessful Login
    close my browsers