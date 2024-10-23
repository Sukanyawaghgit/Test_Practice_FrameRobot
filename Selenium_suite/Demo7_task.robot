




# 7.  Add the first name, last name
# 8.  Update DOB as today's date 
# Use Input text keyword in robot framework 
# Use below in java, C#
# driver.findElement(By.id("form_DOB")).sendKeys("2023-08-08");
# 9.  Update the gender
# 10. . Click on the create new patient button above the form
# 11. . Click on confirm create new patient button.
# 12. . Print the text from alert box (if any error before handling alert add 5 sec wait)
# 13. . Handle alert
# 14. Close the Happy Birthday popup
# 15. Validate the added patient name
*** Settings ***
Library    SeleniumLibrary
Test Teardown   Run Keywords 
Test Setup    Open Browser    browser=chrome  
 

*** Test Cases ***
TC1
  Maximize Browser Window
  Set Selenium Implicit Wait    5s
  # 1.  Navigate onto http://demo.openemr.io/b/openemr/
  Go To    url=http://demo.openemr.io/b/openemr/
  # 2.  Update username as admin
  Input Text    //input[@name='authUser']    admin
# 3.  Update password as pass
  Input Text    //input[@name='clearPass']    pass
# 4.  Select language as English (Indian)
  Select From List By Value    //*[@name="languageChoice"]    18
# 5.  Click on the login button
  Click Button    id=login-button
# 6.  Click on Patient  Click New Search
  Mouse Over    //div[contains(text(),'Patient')] 
  Click Element    //div[contains(text(),'New/Search')] 




