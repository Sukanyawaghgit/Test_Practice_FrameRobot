*** Settings ***
Library    SeleniumLibrary
Test Teardown   Run Keywords 
Test Setup    Open Browser    browser=chrome  
 

*** Test Cases ***
TC1
  Maximize Browser Window
  Set Selenium Implicit Wait    5s
  Go To    url=https://www.ilovepdf.com/pdf_to_word
  Choose File    xpath://input[@type ='file']    file_path=C:${/}Users${/}sukanw${/}Downloads${/}Fundamental of Testing.pdf
 