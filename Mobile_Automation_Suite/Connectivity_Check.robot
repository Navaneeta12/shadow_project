*** Settings ***

Resource        ../Resources_Keywords/Common_Functionality.resource
#Test Teardown   Close Application
Test Setup      Open Browser

*** Test Cases ***

TC1
#4G LTE connectivity with IPv6

    AppiumLibrary.Click Element    id=menu_button
    Sleep    1s
    AppiumLibrary.Click Element    id=checkbox
    Sleep    1s
    AppiumLibrary.Input Text    id=search_box_text    https://test-ipv6.com/
    AppiumLibrary.press keycode           66
    AppiumLibrary.Wait Until Page Contains    Your IPv6 address on the public Internet appears to be     timeout=15s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

TC2
#4G LTE connectivity with IPv4

    AppiumLibrary.Click Element    id=menu_button
    Sleep    1s
    AppiumLibrary.Click Element    id=checkbox
    Sleep    1s
    AppiumLibrary.Input Text    id=search_box_text    https://test-ipv6.com/
    AppiumLibrary.press keycode           66
    AppiumLibrary.Wait Until Page Contains    Your IPv4 address on the public Internet appears to be     timeout=15s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots