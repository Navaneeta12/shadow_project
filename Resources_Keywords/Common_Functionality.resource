*** Settings ***
Documentation       This file handles app configuration, reuseable scripts,etc.
Library     DateTime
Library     SeleniumLibrary
Library     AppiumLibrary

*** Variables ***

${HOST_NAME}     http://localhost:4723/wd/hub
${device_Name}    BUYDK7FY9LIZHQSO
${app_Package}    com.android.chrome
${app_Activity}   com.google.android.apps.chrome.Main


*** Keywords ***

Launch Messaging App

        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}    appPackage=com.google.android.apps.messaging   appActivity=com.google.android.apps.messaging.home.HomeActivity      noReset=${True}
        AppiumLibrary.Capture Page Screenshot

Open Browser

        Open Application    ${HOST_NAME}    platformName=Android     deviceName=${device_Name}     appPackage=${app_Package}     appActivity=${app_Activity}     noReset=${True}
        set selenium implicit wait      10s
        AppiumLibrary.Capture Page Screenshot
        SeleniumLibrary.Capture Page Screenshot

Launch Contact App
        
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.google.android.contacts       appActivity=com.google.android.apps.contacts.activities.PeopleActivity     noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s
        AppiumLibrary.Capture Page Screenshot

Launch Phone App
        
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.google.android.dialer       appActivity=com.android.dialer.main.impl.MainActivity   noReset=${True}      appWaitForLaunch=${False}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s
        
Launch Settings App
        Open Application    http://localhost:4723/wd/hub     platformName=Android    deviceName=${device_Name}     appPackage=com.android.settings       appActivity=com.android.settings.Settings     noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s
        

Launch Chrome Browser

        Open Application    ${HOST_NAME}    platformName=Android     deviceName=${device_Name}     appPackage=${app_Package}     appActivity=${app_Activity}     noReset=${True}
        set selenium implicit wait      30s
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        AppiumLibrary.Click Element    id=home_button
        Sleep    2s
        AppiumLibrary.Input Text    id=search_box_text    Today Weather
        AppiumLibrary.Press Keycode    66
        Sleep    2s
        AppiumLibrary.Wait Until Page Contains    Dharwad, Karnataka
        Sleep    2s


Make Call

       Launch Phone App
       Sleep    2s
       AppiumLibrary.Click Element    id=dialpad_fab
       Sleep    1s
       AppiumLibrary.Input Value    id=digits       8073934821
       Sleep    1s
       AppiumLibrary.Click Element    id=dialpad_voice_call_button
       Sleep    1s

LTE Set
  
      Launch Settings App
      set selenium implicit wait      30s
      Set Screenshot Directory    ${EXECDIR}${/}Screenshots
      AppiumLibrary.Click Text    About phone
      Sleep    1s
      AppiumLibrary.Click Text    All specs
      Sleep    1s
      AppiumLibrary.Click Text    Internal storage
      AppiumLibrary.Click Text    Internal storage
      AppiumLibrary.Click Text    Internal storage
      AppiumLibrary.Click Text    Internal storage
      AppiumLibrary.Click Text    Internal storage
      AppiumLibrary.Click Text    Phone information2
      Sleep    1s
      AppiumLibrary.Click Text    GSM/WCDMA/LTE (PRL)
      Sleep    1s
      AppiumLibrary.Click Text    LTE only
      Sleep    1s






