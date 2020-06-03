*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
GoToBack  
    Open Browser      https://www.google.com/       chrome
    Maximize Browser Window
    ${loc}=     Get Location 
    Log To Console  ${loc}  
    Set Selenium Speed  2seconds
    
    Go To  https://ca.yahoo.com/?p=us
    ${loc}=     Get Location 
    Log To Console  ${loc}

    Go Back  
    ${loc}=     Get Location 
    Log To Console  ${loc}

    Close Browser  

    