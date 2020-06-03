*** Settings ***

Suite Setup     Open browser    http://blazedemo.com/   Chrome
Suite Teardown  Close browser
Library  SeleniumLibrary

*** Test Cases ***
The user can search for flights
    [Tags]	    search_flights
    
    #Select From List By Value   xpath://select[@name='fromPort']  Paris
    Select From List By Value   name:fromPort   Paris
    Select From List by Value   xpath://select[@name='toPort']    London
    Click Button    css:input[type='submit']
    @{flights}=  Get WebElements    css:table[class='table']>tbody tr
    Sleep   4
    Log To Console  ${flights}
    Should Not Be Empty     ${flights}
    

 Test Number Of Availabe Flights
    [Tags]	    search_flights   number
    #Open browser    http://blazedemo.com/   Chrome
    #Select From List By Value   xpath://select[@name='fromPort']  Paris
    Select From List By Label   name:fromPort   Portland
    Select From List by Label   xpath://select[@name='toPort']    Dublin
    Click Button    css:input[type='submit']
    Sleep      3
    @{results}=  Get WebElements    xpath://input[@value="Choose This Flight"]
    ${number of flights}=   Get length     ${results}
    Log To Console      ${number of flights} 
    Should Be Equal As Integers     ${number of flights}    5
    