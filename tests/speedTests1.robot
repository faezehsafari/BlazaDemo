*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
RegisterTest
    ${speedSelenum}=    Get Selenium Speed	
    Log To Console  ${speedSelenum}
    Open browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed	    1seconds
    Select Radio Button	    Gender      F
    Input Text          FirstName       Fazi
    Input Text          LastName        Safa
    Input Text          Email           Fazisafa@yahoo.com
    Input Text          Password        fazi123456
    Input Text          ConfirmPassword        fazi123456
    #why should I mentin it again? this is the same variable???????????
    ${speedSelenum}=    Get Selenium Speed
    Log To Console  ${speedSelenum}
    Close Browser


*** Keywords ***

