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
#Text_Msg_Automation
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=BUYDK7FY9LIZHQSO    appPackage=com.google.android.apps.messaging   appActivity=com.google.android.apps.messaging.home.HomeActivity      noReset=${True}
    Sleep       1s
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

TC2
#WCDMA only
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=BUYDK7FY9LIZHQSO    appPackage=com.google.android.apps.messaging   appActivity=com.google.android.apps.messaging.home.HomeActivity      noReset=${True}
    Sleep       1s
    AppiumLibrary.Click Element    id=start_chat_fab
    Sleep       1s
    AppiumLibrary.Input Value    id=recipient_text_view    9113524286
    Sleep    1s
    AppiumLibrary.press keycode           66
    Sleep    1s
    AppiumLibrary.Input Text    id=compose_message_text    Hello Nonita...
    Sleep    1s
    AppiumLibrary.Click Element    id=send_message_button_icon
    Sleep    1s

TC3
#LTE only
     Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=BUYDK7FY9LIZHQSO    appPackage=com.google.android.apps.messaging   appActivity=com.google.android.apps.messaging.home.HomeActivity      noReset=${True}
    Sleep       1s
    AppiumLibrary.Click Element    id=start_chat_fab
    Sleep       1s
    AppiumLibrary.Input Value    id=recipient_text_view    9113524286
    Sleep    1s
    AppiumLibrary.press keycode           66
    Sleep    1s
    AppiumLibrary.Input Text    id=compose_message_text    Hi Nonita...
    Sleep    1s
    AppiumLibrary.Click Element    id=send_message_button_icon
    Sleep    1s

