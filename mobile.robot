*** Settings ***
# See http://jollychang.github.io/robotframework-appiumlibrary/doc/AppiumLibrary.html
# See https://www.gitbook.com/book/nishantverma/appium-for-android/details
Library     AppiumLibrary
Suite Teardown  Close Application


*** Test Cases ***

Simple Smoke Test
    Open Application   http://localhost:4723/wd/hub   alias=contactmanager   platformName=Android    deviceName=localhost:5555    app=${CURDIR}/ContactManager.apk
    Wait Until Page Contains Element    id=com.example.android.contactmanager:id/addContactButton   timeout=180
    Capture Page Screenshot
    Tap    id=com.example.android.contactmanager:id/addContactButton
    Wait Until Page Contains Element    id=com.example.android.contactmanager:id/contactNameEditText
    Capture Page Screenshot
