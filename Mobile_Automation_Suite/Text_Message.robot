*** Settings ***

Resource        ../Resources_Keywords/Common_Functionality.resource
Test Teardown   Close Application
Test Setup      Launch Messaging App


*** Test Cases ***

TC:Sending Text Message

    AppiumLibrary.Click Element    id=start_chat_fab
    Sleep       1s
    AppiumLibrary.Input Value    id=recipient_text_view    8073934821
    Sleep    1s
    AppiumLibrary.press keycode           66
    Sleep    1s
    AppiumLibrary.Input Text    id=compose_message_text    Hi Nish...
    Sleep    1s
    AppiumLibrary.Click Element    id=send_message_button_icon
    Sleep    1s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots