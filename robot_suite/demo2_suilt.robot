*** Settings ***
Library    Collections

*** Variables ***
@{BROWSER_NAME}     chrome
@{color}     red    green    blue    yellow
&{MY_DATAILS}    my_name=Sukanya    role=Tester    Mobile=9619137186

*** Test Cases ***
TC1
  Log To Console    ${BROWSER_NAME}
  Log To Console    ${color}
   Log To Console    ${color}[2]

   #create a list and load mango,banana,orange
TC2
   ${fruit}    Create List    mango    banana    orange
    Log To Console    ${fruit}
    Append To List  ${fruit}      grapes
    Log To Console    ${fruit}
    Insert Into List     ${fruit}    1    kiwi
    Log To Console    ${fruit}
    Remove From List    ${fruit}    0
    Log To Console    ${fruit}

TC3
    ${fruit}    Create List    mango    banana    orange
    Log To Console    ${fruit}
    Append To List  ${fruit}      grapes
    Log To Console    ${fruit}
    ${count}    Get Length    ${fruit}
    Log To Console      ${count} 
    FOR    ${i}    IN RANGE    0     ${count}    
        Log To Console    ${fruit}[${i}]
        
    END
TC4
  ${fruit}    Create List    mango    banana    orange    grapes
  FOR    ${i}    IN    ${fruit}
      Log To Console   ${i} 
      
  END

TC5
  Log To Console    ${MY_DATAILS}
  Log To Console    ${MY_DATAILS}[Mobile]
  @{android_div}    Create Dictionary    platformname=android_div    devicename=Samsung    app=Swigy
  Log To Console    @{android_div}    [platformname]
  ${output}    Get From Dictionary    @{android_div}     platformname
  Log To Console      ${output}


      
       
    

    
