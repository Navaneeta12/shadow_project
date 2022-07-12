*** Settings ***

Resource        ../Resources_Keywords/Common_Functionality.resource
Test Teardown   Close Application
Test Setup      Launch Phone App

*** Test Cases ***

TC: Making Call with LTE connection

    Sleep    1s
    AppiumLibrary.Click Element    id=dialpad_fab
    Sleep    1s
    AppiumLibrary.Input Value    id=digits       8073934821
    Sleep    1s
    AppiumLibrary.Click Element    id=dialpad_voice_call_button
    Sleep    1s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots
