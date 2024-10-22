*** Settings ***
Library    DateTime
Library    String

*** Test Cases ***
TC1    
...    Log To Console    message=Sukanya

TC2
  ${session}     Set Variable     Robotframework   
  Log To Console    ${session}

TC3
  ${radius}     Set Variable     10
  ${Area}     Evaluate    3.14*${radius}*${radius}
  Log To Console    ${Area}
  Log    ${Area}

TC4
  ${current_date}     Get Current Date
  Log To Console    ${current_date}

TC5
  Set Local Variable    ${email_id}     sukanyawagh@gmail.com
  ${result}     Remove String     ${email_id}     @     .
  Log To Console    ${result}    
  Should Be Equal    ${result}    sukanyawaghgma

  
