*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.ppy
*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}      ${Browser}
    open browser  ${SiteUrl}     ${Browser}
    maximize browser window

Click Register Link
    click link  ${link_register}

Enter FirstName
   [Arguments]    ${firstName}
   input text   ${txt_firstName}  ${firstName}
Enter LasstName
   [Arguments]    ${lastName}
   input text   ${txt_lastName}  ${lastName}

Enter Phone
    [Arguments]    ${phone}
   input text   ${txt_phone}  ${phone}
Enter Email
   [Arguments]    ${email}
   input text   ${txt_email}  ${email}

Enter Adress
   [Arguments]    ${address}
   input text   ${txt_adress}  ${address}

Enter City
   [Arguments]    ${city}
   input text   ${txt_city}  ${city}



Enter State
   [Arguments]    ${state}
   input text   ${txt_state}  ${state}

Enter Postal Code
   [Arguments]    ${postalCode}
   input text   ${txt_postalCode}  ${postalCode}

Select Country
   [Arguments]    ${country}
   select from list by label    ${drp_country}  ${country}


Enter UserName
     [Arguments]  ${username}
     input text  ${txt_userName}  ${username}

Enter Password
    [Arguments]    ${password}
    input text   ${txt_password}  ${password}

Enter Confirmed Password
  [Arguments]    ${confirmedPassword}
   input text   ${txt_confirmedPassword}  ${confirmedPassword}

Click Submit
  click button   ${btn_submit}

Verify successful Registration
  page should contain    Thank you for registering

Close my Browsers
  close all browsers


