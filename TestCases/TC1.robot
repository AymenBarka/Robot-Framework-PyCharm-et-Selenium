*** Settings ***
Documentation    Test case pour tester
Library    SeleniumLibrary

*** Variables ***
${MSG}=     Hello World

*** Keywords ***
log hello world
    log     ${MSG}
*** Test Cases ***
afficher un text1
    [Tags]    1
    log    hello world
afficher un text2
  [Tags]        2
  log    hello world
