*** Settings ***
Library     SeleniumLibrary
Set
*** Variables ***
${browser}   chrome
${url}      http://www.practiceselenium.com/practice-form.html 

*** Test Cases ***
Handling Dropdown And List
    Open browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed      1seconds
    Select From List By Label       continents      Europe
    Select From List By Index       continents      4
    Select From List By Label       selenium_commands   Wait Commands
    Select From List By Index       selenium_commands      4
    Close Browser

*** Keywords ***

