*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Test Cases ***
Table Validations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=    get element count    xpath://table[@name='BookTable']/tbody/tr
     ${colum}=    get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th
     log to console  ${rows}
     log to console  ${colum}
     #get master in java from the table
     ${data}=   get element count     xpath://table[@name='BookTable']/tbody/tr[6]/td
     log to console    ${data}
     table column should contain    xpath://table[@name='BookTable']   2  Author
     table row should contain  xpath://table[@name='BookTable']   4    Learn JS
     table cell should contain  xpath://table[@name='BookTable']  4  2    Animesh
     table header should contain  xpath://table[@name='BookTable']    Price