*** Settings ***
*** Test Cases ***
TC1 User Registration Test
    [Tags]    sanity
    log to console    this is user reg test
    log to console    user reg test is over
TC2 Login Test
    [Tags]    regression
    log to console    this is login test
    log to console    loging test is over
T3 Change User settings
    [Tags]    regression
    log to console    this is change user settings
    log to console    change user settings is over
TC4 Logout Test
    [Tags]    sanity
    log to console    this is logout test
    # robot --include=sanity Tagging.robot or robot -i sanity Tagging.robot
    # robot -e sanity Tagging.robot