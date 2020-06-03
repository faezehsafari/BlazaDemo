*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseActions
    #RightClock
    Open Browser       https://swisnl.github.io/jQuery-contextMenu/demo.html        chrome
    Maximize Browser Window  
    Set Selenium Speed  2seconds
    Open Context Menu     xpath:/html/body/div[1]/section/div/div/div/p/span  
  

    #DobbleClick
    Go To  http://testautomationpractice.blogspot.com/
    Double Click Element  xpath://*[@id="HTML10"]/div[1]/button
    

    #dragAndDrop
    Go To  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Drag And Drop    box6  box106   
    Close Browser    
    
