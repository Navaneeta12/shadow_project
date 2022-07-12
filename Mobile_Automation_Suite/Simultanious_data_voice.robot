*** Settings ***

Resource        ../Resources_Keywords/Common_Functionality.resource

*** Test Cases ***

TC1
#Simultaneous Voice call and Data Check with LTE Connection

    #LTE Set
    Make Call
    Launch Chrome Browser
    Sleep    5s
    AppiumLibrary.Close All Applications

TC2
#Simultaneous Voice call and Data Check with WCDMA Connection

    Make Call
    Launch Chrome Browser
    Sleep    5s
    AppiumLibrary.Close All Applications
