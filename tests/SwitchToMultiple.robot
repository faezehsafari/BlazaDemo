*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
SwitchToMultiple  
    Open Browser      https://www.google.com/       chrome
    Maximize Browser Window
    
    Sleep       3

    Open Browser      https://ca.yahoo.com/?p=us    chrome

    Switch Browser  1
    ${title1}=  Get Title  
    Log To Console      ${title1}

    Switch Browser  2
    ${title1}=  Get Title  
    Log To Console      ${title1}

    Sleep  3  
    Close All Browsers  
    
    