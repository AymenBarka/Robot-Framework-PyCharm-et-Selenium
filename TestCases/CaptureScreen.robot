*** Settings ***
Library    SeleniumLibrary
Test Teardown        close browser
Library    SeleniumLibrary
*** Test Cases ***
Login Test
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    maximize browser window
        set selenium implicit wait    3 seconds

     input text      css:input[name='username']    Admin
    input text      css:input[name='password']     admin123
    #click button    xpath://button[text()=' Login ']


    capture element screenshot    xpath://div[@class='orangehrm-login-logo']//img[1]  C:/Users/aymen/PycharmProjects/pythonProject1/logo.png

    capture page screenshot    C:/Users/aymen/PycharmProjects/pythonProject1/loginTC.png
    sleep    3
