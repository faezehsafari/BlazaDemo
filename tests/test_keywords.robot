*** Settings ***

Library  SeleniumLibrary


*** Test Cases ***

# ${Lenght}=    Get Length      Hello, world!  
# Should Be Equal As Integers     ${Lenght}       13

# @{list}     Create List     Hello,   world!
# ${Lenght}=      Get Lenght      ${List}
# Should Be Equal As Integers     ${Lenght}   2

#Log To Console      ${Lenght}


# Checkbox not successful
#     Open Browser    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_checkbox      chrome
#     Set Selenium Speed	    1seconds   
#     Select Checkbox	     id:vehicle1
#     Select Checkbox	     id:vehicle2
#     Unselect Checkbox	 id:vehicle1  
#     Close Browser

Checkbox successful
    Open Browser    http://www.practiceselenium.com/practice-form.html      chrome
    Set Selenium Speed	    1seconds   
    Select Checkbox	     tea1
    Select Checkbox	     tea3
    Unselect Checkbox	 tea1  
    Close Browser


# clear
#     Open Browser    https://www.w3schools.com/python/default.asp   chrome
#     sleep   3
#     Clear Element Text      xpath://h2[text()='Learning by Examples']
#     Close Browser







