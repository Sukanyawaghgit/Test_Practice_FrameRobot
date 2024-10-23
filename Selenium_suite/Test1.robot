*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
  Open Browser    https://robotframework.org/    chrome
  Maximize Browser Window
  ${Current_Url}    Get Location 
  Log To Console    ${Current_Url}   
  ${title}    Get Title
  Log To Console    ${title}
  ${Source}    Get Source   
  Log To Console    ${Source}  
  Should Be Equal     ${title}    Robot Framework
  Click Button    //*[@id="app"]//button[contains(text(),'Get started')]   

TC2
  Open Browser    browser=chrome
  Maximize Browser Window
  Go To    url=https://www.facebook.com/
  Input Text    id:email    sukanyawagh@gmail.com
  Input Password    id:pass    shfdgjh
  Click Element    name:login
  sleep    10s

TC3
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    20s
  Go To    url=https://www.facebook.com/
  Click Element   link=Create new account
  Input Text    name:firstname    Sayyed
  Input Text    name:lastname    Anam
  Click Element    xpath=//input[@value='-1']
  #Select Radio Button    sex    -1
  Sleep    10s
  Click Element    id=day
  Select From List By Value    //*[@id="day"]    30
  Click Element    id=month
  Select From List By Value     //*[@id="month"]    3
  Click Element    id=year
  Select From List By Value     //*[@id="year"]    1989
