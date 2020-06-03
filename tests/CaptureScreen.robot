*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
CaptureElement
    Open Browser     https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window  
    # Capture Element Screenshot  xpath://*[@id="divLogo"]/img    C:/Users/faeze/PycharmProjects/BlazeDemo/tests/logo.jpg
    # Capture Page Screenshot   captureOrangePage.jpg

    Capture Element Screenshot  xpath://*[@id="divLogo"]/img   orangecapture2.png
    Capture Page Screenshot     orangePage2.png

    Close Browser  
    

    