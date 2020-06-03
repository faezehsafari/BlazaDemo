*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TabbedWindows   
    Open Browser      http://demo.automationtesting.in/Windows.html       chrome
    Maximize Browser Window
    Click element      xpath://*[@id="Tabbed"]/a/button
    Select Window      title= Sakinalium | Home     
    Click element       xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    Sleep   3
    Close All Browsers

    