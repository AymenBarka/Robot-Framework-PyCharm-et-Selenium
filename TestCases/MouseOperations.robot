*** Settings ***
Library    SeleniumLibrary
Test Teardown    close all browsers
*** Test Cases ***
MouseActions
#right click Actions
    open browser     https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu  xpath:(//div[@class='document']//span)[1]
    sleep    3
    #Double click actions
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[text()='Copy Text']
    sleep    3
    #Darag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box2    box106
    sleep    3
