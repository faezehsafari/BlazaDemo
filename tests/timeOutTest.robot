*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
RegisterTest
    
    Open browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Timeout	    7seconds
    Wait Until Page Contains    Registration	#5seconds
    Select Radio Button	    Gender      F
    Input Text          FirstName       Fazi
    Input Text          LastName        Safa
    Input Text          Email           Fazisafa@yahoo.com
    Input Text          Password        fazi123456
    Input Text          ConfirmPassword        fazi123456
    Close Browser


*** Keywords ***

