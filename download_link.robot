* Settings *

Library  AppiumLibrary
Library     SeleniumLibrary
Library     OperatingSystem
Library     AutoItLibrary
Library     DateTime
Library     BuiltIn
Test Teardown   Close Application

* Test Cases *


TC1
#Download_link_check with HTTP on LTE Network
    Set Selenium Speed    40s
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=BUYDK7FY9LIZHQSO     appPackage=com.android.chrome   appActivity=com.google.android.apps.chrome.Main     noReset=${True}
    Sleep    1s
    AppiumLibrary.Input Text    id=url_bar    https://drive.google.com/uc?export=download&id=1-y4H2BWsAklIvAjsyf3VaHJ5M6ieZ0xU
    Sleep    1s
    ${time1}  Get Current Date
    AppiumLibrary.press keycode           66
    Sleep    2s
    Open Notifications
    Sleep   2s
    #AppiumLibrary.Wait Until Page Contains    Download complete     timeout=20s
    ${time2}   Get Current Date
    ${final_time}     Subtract Date From Date     ${time2}        ${time1}
    Log To Console    ${final_time}
    #Set Screenshot Directory    ../Screenshots

TC2
#Download_link_check with HTTP on 3G Network
     Set Selenium Speed    40s
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=BUYDK7FY9LIZHQSO     appPackage=com.android.chrome   appActivity=com.google.android.apps.chrome.Main     noReset=${True}
    Sleep    1s
    AppiumLibrary.Input Text    id=url_bar    https://drive.google.com/uc?export=download&id=1-y4H2BWsAklIvAjsyf3VaHJ5M6ieZ0xU
    Sleep    1s
    ${time1}  Get Current Date
    AppiumLibrary.press keycode           66
    Sleep    2s
    Open Notifications
    Sleep   2s
    #AppiumLibrary.Wait Until Page Contains    Download complete     timeout=20s
    ${time2}   Get Current Date
    ${final_time}     Subtract Date From Date     ${time2}        ${time1}
    Log To Console    ${final_time}
