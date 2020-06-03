*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser  https://www.countries-ofthe-world.com/flags-of-the-world.html  chrome  
    Maximize Browser Window  
    Sleep  2
    #Execute Javascript  window.scrollTo(0,1500)
    #Scroll Element Into View  xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[71]/td[2]
    #Sleep  4 

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)   #End of the page
    Sleep   4  
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)  #Starting point
    Sleep   4
    Close Browser  
