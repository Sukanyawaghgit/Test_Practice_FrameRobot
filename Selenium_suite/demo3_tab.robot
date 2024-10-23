*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    20s 
  Go To    url=https://www.db4free.net/    
  #Click Element    //b[contains(text(),'php')]
  Click Element    Partial link=phpMyAdmin
  Sleep    20s
  Switch Window    phpMyAdmin
  Input Text    id:input_username    admin
  Input Text    id:input_password    admin123
  Click Element   id:input_go
  Close Window
  Switch Window   db4free.net - MySQL Database for free
  Log Title
  [Teardown]    Run Keywords    Log Title    AND    Close Browser   

TC2
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    20s 
  Go To    url=https://www.db4free.net/    
  #Click Element    //b[contains(text(),'php')]
  Click Element    Partial link=phpMyAdmin
  Sleep    20s
  Switch Window    NEW
  Input Text    id:input_username    admin
  Input Text    id:input_password    admin123
  Click Element   id:input_go
  Close Window
  Switch Window   MAIN
  Log Title
  [Teardown]    Run Keywords    Log Title    AND    Close Browser   

TC3
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    20s 
  Go To    url=https://www.db4free.net/    
  #Click Element    //b[contains(text(),'php')]
  Click Element    Partial link=phpMyAdmin
  ${Window_id}    Get Window Handles
  Log    ${Window_id} 

  
