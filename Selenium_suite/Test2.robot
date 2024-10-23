*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    20s
  Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
  Input Text    name:UserFirstName    Sayyed
  Input Text    name:UserLastName    Sukanyaw
  Input Text    name:UserEmail    Sukanyawagh@mail.com
  Select From List By Label   name:UserTitle    Student / Job Seeker / Personal Interest
  Input Text    name:CompanyName    Kongsberg
  Select From List By Label    name:CompanyEmployees    101 - 200 employees
  #Input Text    name:UserPhone    fsdfsd
  Click Element    (//div[@class='checkbox-ui'])[2]
  Click Element    name=start my free trial
  Element Text Should Be    //span[contains(text(),'Enter a valid phone number')]    Enter a valid phone number    




  