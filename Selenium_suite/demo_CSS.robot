*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser    url=https://www.malaysiaairlines.com/in/en/home.html    browser=chrome    options=add_arguments("start-maximized");add_arguments("start'start-maximized")
  Maximize Browser Window
  Set Selenium Implicit Wait    20s
  Click Element    xpath=//span[text()='Accept all cookies']
#   #Javaquery
#   Execute Javascript    document.querySelector("input[name='dateDeparture']").value='29 Oct 2024'
#   sleep    5s
#   Execute Javascript    document.querySelector("input[name='dateReturn']").value='30 Oct 2024'
  sleep    5s
  #web element
  ${dateDeparture}    Get WebElement    xpath=//div[@id='book-flight']//input[@name='dateDeparture']
  Execute Javascript    arguments[0].value='29 Oct 2024'    ARGUMENTS     ${dateDeparture} 
  ${dateReturn}    Get WebElement    xpath=//div[@id='book-flight']//input[@name='dateReturn']
  Execute Javascript    arguments[0].value='30 Oct 2024'    ARGUMENTS     ${dateReturn}
  Click Element  //input[@class='multiselect-search']  
  Input Text    //input[@class='multiselect-search']    Mumbai





   

