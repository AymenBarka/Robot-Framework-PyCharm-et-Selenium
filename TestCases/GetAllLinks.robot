*** Settings ***
Library    SeleniumLibrary
Test Teardown    close browser
*** Test Cases ***
get all links
    open browser    https://demo.nopcommerce.com/     chrome
    maximize browser window
   ${AllLinks}=    get element count    xpath://a
   log to console  ${AllLinks}
   @{LinkItems}    create list

   FOR    ${i}     IN RANGE    1  ${AllLinks}
       ${LinkText}=    get text  xpath://a[${i}]
       log to console  ${LinkText}
   END
