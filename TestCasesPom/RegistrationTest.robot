*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot


*** Variables ***

${SiteUrl}        https://demo.guru99.com/test/newtours/register.php
${Browser}       chrome

*** Test Cases ***
Registration Test
    open my browser    ${SiteUrl}     ${Browser}
    Click Register Link
    Enter FirstName    aymen
    Enter LasstName    barka
    Enter Phone        123456778
    Enter email        Test@yahoo.fr
    Enter Adress       rue 2345 les fleurs
    Enter City         manouba
    Enter State        manouba
    Enter Postal Code  2011
    Select Country     TUNISIA
    Enter UserName     ghost
    Enter Password     Test@123
    Enter Confirmed Password     Test@123
    Click Submit
    Verify successful Registration
    Close my Browsers