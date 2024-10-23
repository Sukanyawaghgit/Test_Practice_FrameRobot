*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    #enter userid as john123
    Select Frame    //frame[@name='login_page']
    Input Text    name=fldLoginUserId  john123
    #Input Text    //frame[contains(@src,'RSNBLogin.html')]    john123
    #Click Element    //a[contains(text(),'CONTINUE')] 
    Unselect Frame
