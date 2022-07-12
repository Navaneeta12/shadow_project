*** Settings ***

Resource        ../Resources_Keywords/Common_Functionality.resource
Test Teardown   Close Application
Test Setup      Open Browser

*** Test Cases ***

TC1
#Download link speed with LTE

    AppiumLibrary.Input Text    id=url_bar    https://drive.google.com/uc?export=download&id=1-y4H2BWsAklIvAjsyf3VaHJ5M6ieZ0xU
    ${time1}    Get Current Date
    AppiumLibrary.press keycode           66
    Open Notifications
    ${time2}   Get Current Date
    ${final_time}     Subtract Date From Date     ${time2}        ${time1}
    Log To Console    ${final_time}
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

TC2
#Download link speed with WCDMA

    AppiumLibrary.Input Text    id=url_bar    https://drive.google.com/uc?export=download&id=1-y4H2BWsAklIvAjsyf3VaHJ5M6ieZ0xU
    ${time1}    Get Current Date
    AppiumLibrary.press keycode           66
    Open Notifications
    ${time2}   Get Current Date
    ${final_time}     Subtract Date From Date     ${time2}        ${time1}
    Log To Console    ${final_time}
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots