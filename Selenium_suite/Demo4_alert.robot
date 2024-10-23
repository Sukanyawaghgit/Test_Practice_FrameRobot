*** Settings ***
Library    SeleniumLibrary
Test Teardown   Run Keywords 
Test Setup    Open Browser    browser=chrome  
 

*** Test Cases ***
TC1
    
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    #click on Go
    Click Element    //img[@alt='Go']
    ${actual_Alert}    Handle Alert
    Log     ${actual_Alert} 
    Should Be Equal As Strings    ${actual_Alert}    Customer ID${SPACE}${SPACE}cannot be left blank.  
    

TC2

   
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    #click on Go
    Click Element    //img[@alt='Go']
    ${actual_Alert}    Handle Alert
    Log     ${actual_Alert} 
    Alert Should Be Present    text= Customer ID${SPACE}${SPACE}cannot be left blank.    action=ACCEPT 
    ...    timeout=20s
    [teardown]    None