*** Settings ***
Library     AppiumLibrary
Library     DebugLibrary
Library     Collections
Library     RobotMongoDBLibrary.Insert
#Library     ../utils/utils.py
Resource    ../step_definitions/keywords.robot

*** Variables ***
#android
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION12}   12.0
${APP_WAIT_PACKAGE}             com.example.android.contactmanager
${APP_WAIT_ACTIVITY}            com.example.android.contactmanager.ContactManager

#Page Objects
${CREATE_CONTACT_BUTTON}        id=addContactButton
${CONTACT_NAME_FIELD}           id=contactNameEditText
${CONTACT_PHONE_FIELD}          id=contactPhoneEditText
${CONTACT_MAIL_FIELD}           id=contactEmailEditText
${SAVE_CONTACT_BUTTON}          id=contactSaveButton
${CONTINUE_BUTTON}              xpath=//*[@text="Continuar" or @text="Continue"]
${OK_BUTTON}                    xpath=//*[@text="OK"]
${TARGET_ACCOUNT_DROPDOWN}      id=accountSpinner
${GOOGLE_ACCOUNT_OPTION}        xpath=//*[@text="Google"]

${CONTACT_NAME}                 _test contact
${CONTACT_PHONE}                +5511987654321
${CONTACT_MAIL}                 me@mail.com