***Settings***
Library       AppiumLibrary
Library       libs/extend.py
Library       libs/scroll_down_up.py

Resource        helpers.robot


*** Variables ***
${URL}                          http://localhost:4723
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_APP}                  ${EXECDIR}/app/twp.apk
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_DEVICE_NAME}          Android Emulator
${UDID}                         emulator-5554
${ANDROID_PLATFORM_VERSION}     "9.0"


***Keywords***
Abrir a aplicação no android local
    Set Appium Timeout      10
    Open Application        ${URL}/wd/hub
    ...                     automationName=${ANDROID_AUTOMATION_NAME}
    ...                     platformName=${ANDROID_PLATFORM_NAME}
    ...                     deviceName=${ANDROID_DEVICE_NAME}
    ...                     app=${ANDROID_APP}
    ...                     udid=${UDID}

Abrir a aplicação no android
    Set Appium Timeout      10
    Open Application        ${URL}/wd/hub
    ...                     automationName=${ANDROID_AUTOMATION_NAME}
    ...                     platformName=${ANDROID_PLATFORM_NAME}
    ...                     deviceName=${ANDROID_DEVICE_NAME}
    ...                     app=${ANDROID_APP}
    ...                     platformVersion=${ANDROID_PLATFORM_VERSION}

Fechar a aplicação
    Capture Page Screenshot
    Close Application
