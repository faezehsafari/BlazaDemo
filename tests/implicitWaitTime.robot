*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
RegisterTest
    
    Open browser    ${url}      ${browser}
    Maximize Browser Window
    ${implicitTime}=     Get Selenium Implicit Wait	
    Log To Console      ${implicitTime}

    Set Selenium Implicit Wait      7seconds
    
    ${implicitTime}=     Get Selenium Implicit Wait	
    Log To Console      ${implicitTime}
    
    Select Radio Button	    Gender      F
    Input Text          FirstName111       Fazi
    Input Text          LastName        Safa
    Input Text          Email           Fazisafa@yahoo.com
    Input Text          Password        fazi123456
    Input Text          ConfirmPassword        fazi123456
    

    Close Browser


*** Keywords ***

